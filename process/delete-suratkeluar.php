<?php 
// koneksi database
include '../koneksi.php';

// menangkap data id yang di kirim dari url
$sukeluar_id = $_GET['sukeluar_id'];


// menghapus data dari database
mysqli_query($koneksi,"delete from data_sukeluar where sukeluar_id='$sukeluar_id'");

// mengalihkan halaman kembali ke index.php
header("location:../suratkeluar.php");

?>