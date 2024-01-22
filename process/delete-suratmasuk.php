<?php 
// koneksi database
include '../koneksi.php';

// menangkap data id yang di kirim dari url
$sumasuk_id = $_GET['sumasuk_id'];


// menghapus data dari database
mysqli_query($koneksi,"delete from data_sumasuk where sumasuk_id='$sumasuk_id'");

// mengalihkan halaman kembali ke index.php
header("location:../suratmasuk.php");

?>