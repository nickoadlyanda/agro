<?php
$servername = "192.168.0.100"; // Ganti dengan nama server Anda
$username = "spsibela_nxartz"; // Ganti dengan username MySQL Anda
$password = "k94560627"; // Ganti dengan password MySQL Anda
$dbname = "spsibela_managementspsi"; // Ganti dengan nama databda

// Membuat koneksi ke database
$conn = new mysqli($servername, $username, $password, $dbname);

// Memeriksa koneksi
if ($conn->connect_error) {
    die("Koneksi gagal: " . $conn->connect_error);
}

// Mendapatkan nilai dari form
  $tenagakerja_id 				= $_POST['tenagakerja_id'];
  $regmap   					= $_POST['regmap'];
  $nama_tenagakerja     		= $_POST['nama_tenagakerja'];
  $tempatlahir_tenagakerja  	= $_POST['tempatlahir_tenagakerja'];
  $tanggallahir_tenagakerja  	= $_POST['tanggallahir_tenagakerja'];
  $alamat_tenagakerja   		= $_POST['alamat_tenagakerja'];
  $registernumber   			= $_POST['registernumber'];
  $regunumber   				= $_POST['regunumber'];
  $lokasisektor   			    = $_POST['lokasisektor'];
  $agama_tenagakerja   		  	= $_POST['agama_tenagakerja'];
  $sex   					   	= $_POST['sex'];

// Jika ada foto yang diupload
if ($_FILES['user_foto']['size'] > 0) {
    $nama_file = $_FILES['user_foto']['name'];
    $tmp_file = $_FILES['user_foto']['tmp_name'];
    $folder = "../Uploads/"; // Folder tempat menyimpan foto di server
    
    // Membuat nama file baru secara acak
    $nama_baru = uniqid().'_SPSI_'.$nama_file;
    $tujuan = $folder . $nama_baru;
    
    // Pindahkan foto ke folder yang ditentukan dengan nama baru
    move_uploaded_file($tmp_file, $tujuan);

    // Query untuk update data beserta foto
    $sql = "UPDATE data_tenagakerja SET regmap='$regmap',
    nama_tenagakerja='$nama_tenagakerja',
    tempatlahir_tenagakerja='$tempatlahir_tenagakerja',
    tanggallahir_tenagakerja='$tanggallahir_tenagakerja',
    alamat_tenagakerja='$alamat_tenagakerja',
    registernumber='$registernumber',
    regunumber='$regunumber',
    lokasisektor='$lokasisektor',
    agama_tenagakerja='$agama_tenagakerja',
    sex='$sex',
    user_foto='$nama_baru'
    WHERE tenagakerja_id=$tenagakerja_id";
} else {
    // Jika tidak ada foto yang diupload
    $sql = "UPDATE data_tenagakerja SET regmap='$regmap',
    nama_tenagakerja='$nama_tenagakerja',
    tempatlahir_tenagakerja='$tempatlahir_tenagakerja',
    tanggallahir_tenagakerja='$tanggallahir_tenagakerja',
    alamat_tenagakerja='$alamat_tenagakerja',
    registernumber='$registernumber',
    regunumber='$regunumber',
    lokasisektor='$lokasisektor',
    agama_tenagakerja='$agama_tenagakerja',
    sex='$sex'
    WHERE tenagakerja_id=$tenagakerja_id";
}

if ($conn->query($sql) === TRUE) {
    // Data berhasil diupdate, alihkan kembali ke halaman form_update.php
    echo "<script>alert('Data berhasil diubah.');window.location='../data-tenagakerja.php';</script>";
    exit();
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
?>