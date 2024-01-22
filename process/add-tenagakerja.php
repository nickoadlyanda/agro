<?php
$servername = "192.168.0.100"; // Ganti dengan nama server Anda
$username = "spsibela_nxartz"; // Ganti dengan username MySQL Anda
$password = "k94560627"; // Ganti dengan password MySQL Anda
$dbname = "spsibela_managementspsi"; // Ganti dengan nama database Anda

// Membuat koneksi ke database
$conn = new mysqli($servername, $username, $password, $dbname);

// Memeriksa koneksi
if ($conn->connect_error) {
    die("Koneksi gagal: " . $conn->connect_error);
}

// Mendapatkan nilai dari form
$regmap 					= $_POST['regmap'];
$nama_tenagakerja 			= $_POST['nama_tenagakerja'];
$tempatlahir_tenagakerja 	= $_POST['tempatlahir_tenagakerja'];
$tanggallahir_tenagakerja	= $_POST['tanggallahir_tenagakerja'];
$alamat_tenagakerja 		= $_POST['alamat_tenagakerja'];
$registernumber 			= $_POST['registernumber'];
$regunumber					= $_POST['regunumber'];
$lokasisektor 				= $_POST['lokasisektor'];
$agama_tenagakerja 			= $_POST['agama_tenagakerja'];
$sex 						= $_POST['sex'];
// Dapatkan nilai untuk setiap kolom lainnya (kolom2 hingga kolom10)

// Mendapatkan informasi tentang file yang diupload
$nama_file = $_FILES['user_foto']['name'];
$tmp_file = $_FILES['user_foto']['tmp_name'];
$ukuran_file = $_FILES['user_foto']['size'];
$folder = "../Uploads/"; // Folder tempat menyimpan foto di server

// Membuat nama file baru secara acak
$nama_baru = uniqid().'_SPSI_'.$nama_file;
$tujuan = $folder . $nama_baru;

// Pindahkan foto ke folder yang ditentukan dengan nama baru
move_uploaded_file($tmp_file, $tujuan);

// Query untuk menyimpan data ke database bersama nama file foto
$sql = "INSERT INTO data_tenagakerja (tenagakerja_id, regmap, nama_tenagakerja, tempatlahir_tenagakerja, tanggallahir_tenagakerja, alamat_tenagakerja, registernumber, regunumber, lokasisektor, agama_tenagakerja, sex, user_foto) VALUES (NULL, '$regmap', '$nama_tenagakerja', '$tempatlahir_tenagakerja', '$tanggallahir_tenagakerja', '$alamat_tenagakerja', '$registernumber', '$regunumber', '$lokasisektor', '$agama_tenagakerja', '$sex', '$nama_baru')";

if ($conn->query($sql) === TRUE) {
	header("location:../form-tenagakerja.php");
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
?>
