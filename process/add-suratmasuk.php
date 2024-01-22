<?php
include '../koneksi.php';
    $sumasuk_num 	= $_POST['sumasuk_num'];
    $sumasuk_date 	= $_POST['sumasuk_date'];
    $sumasuk_from 	= $_POST['sumasuk_from'];
    $sumasuk_hal	= $_POST['sumasuk_hal'];
    $sumasuk_datein = $_POST['sumasuk_datein'];
    $sumasuk_note	= $_POST['sumasuk_note'];

$limit = 10 * 1024 * 1024;
$ekstensi =  array('pdf','doc','docx','xls','xlsx','');
$jumlahFile = count($_FILES['foto']['name']);
 
for($x=0; $x<$jumlahFile; $x++){
	$namafile = $_FILES['foto']['name'][$x];
	$tmp = $_FILES['foto']['tmp_name'][$x];
	$tipe_file = pathinfo($namafile, PATHINFO_EXTENSION);
	$ukuran = $_FILES['foto']['size'][$x];	
	if($ukuran > $limit){
		header("location:../suratmasuk.php");		
	}else{
		if(!in_array($tipe_file, $ekstensi)){
			header("location:../suratmasuk.php");			
		}else{		
			move_uploaded_file($tmp, '../File_SuratMasuk/'.date('d-m-Y').'-'.$namafile);
			$x = date('d-m-Y').'-'.$namafile;
			mysqli_query($koneksi,"INSERT INTO data_sumasuk VALUES(NULL,'$sumasuk_num','$sumasuk_date','$sumasuk_from','$sumasuk_hal','$sumasuk_datein','$sumasuk_note','$x')");
			header("location:../suratmasuk.php");
		}
	}
}