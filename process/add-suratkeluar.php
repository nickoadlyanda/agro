<?php
include '../koneksi.php';
    $sukeluar_num 	= $_POST['sukeluar_num'];
    $sukeluar_date 	= $_POST['sukeluar_date'];
    $sukeluar_from 	= $_POST['sukeluar_from'];
    $sukeluar_hal	= $_POST['sukeluar_hal'];
    $sukeluar_datein = $_POST['sukeluar_datein'];
    $sukeluar_note	= $_POST['sukeluar_note'];

$limit = 10 * 1024 * 1024;
$ekstensi =  array('pdf','doc','docx','xls','xlsx','');
$jumlahFile = count($_FILES['foto']['name']);
 
for($x=0; $x<$jumlahFile; $x++){
	$namafile = $_FILES['foto']['name'][$x];
	$tmp = $_FILES['foto']['tmp_name'][$x];
	$tipe_file = pathinfo($namafile, PATHINFO_EXTENSION);
	$ukuran = $_FILES['foto']['size'][$x];	
	if($ukuran > $limit){
		header("location:../suratkeluar.php");		
	}else{
		if(!in_array($tipe_file, $ekstensi)){
			header("location:../suratkeluar.php");			
		}else{		
			move_uploaded_file($tmp, '../File_SuratKeluar/'.date('d-m-Y').'-'.$namafile);
			$x = date('d-m-Y').'-'.$namafile;
			mysqli_query($koneksi,"INSERT INTO data_sukeluar VALUES(NULL,'$sukeluar_num','$sukeluar_date','$sukeluar_from','$sukeluar_hal','$sukeluar_datein','$sukeluar_note','$x')");
			header("location:../suratkeluar.php");
		}
	}
}