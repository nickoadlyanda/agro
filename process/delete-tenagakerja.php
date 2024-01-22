<?php 
// koneksi database
include '../koneksi.php';

// menangkap data id yang di kirim dari url
$tenagakerja_id = $_GET['tenagakerja_id'];


// menghapus data dari database
mysqli_query($koneksi,"delete from data_tenagakerja where tenagakerja_id='$tenagakerja_id'");

// mengalihkan halaman kembali ke index.php
header("location:../data-tenagakerja.php");

?>