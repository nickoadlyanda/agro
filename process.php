<?php
// Koneksi ke database
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "agro";

$conn = new mysqli($servername, $username, $password, $dbname);

// Cek koneksi
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Fungsi untuk menyimpan informasi file ke database
function insertFileData($fileName, $filePath, $fileSize, $conn) {
    // Cek apakah file dengan nama yang sama sudah ada
    $checkSql = "SELECT * FROM file_data WHERE file_name = '$fileName'";
    $result = $conn->query($checkSql);

    if ($result->num_rows == 0) {
        // Jika tidak ada, masukkan data baru
        $sql = "INSERT INTO file_data (file_name, file_path, file_size, is_imported) VALUES ('$fileName', '$filePath', $fileSize, 1)";
        if ($conn->query($sql) === TRUE) {
            echo "(Update!) File data inserted successfully<br>";
        } else {
            echo "Error inserting file data: " . $conn->error . "<br>";
        }
    } else {
        echo "File with the same name already exists, skipping insertion for $fileName<br>";
    }
}

// Fungsi untuk membaca isi file CSV dan menyimpan ke database
function processCSVFile($filePath, $conn) {
    // Baca file CSV
    if (($handle = fopen($filePath, "r")) !== FALSE) {
        // Lewati baris pertama (header)
        fgetcsv($handle, 1000, ",");

        // Baca baris per baris dari file CSV
        while (($data = fgetcsv($handle, 1000, ",")) !== FALSE) {
            $analysisTime = $data[0];

            // Cek apakah data dengan analysis_time yang sama sudah ada dalam tabel sample
            $checkExistingSql = "SELECT * FROM sample WHERE analysis_time = '$analysisTime'";
            $existingResult = $conn->query($checkExistingSql);

            if ($existingResult->num_rows == 0) {
                // Sesuaikan dengan struktur CSV Anda dan sesuaikan query SQL
                $sql = "INSERT INTO sample (analysis_time, product_name, product_code, sample_type, sample_number, sample_comment, instrument_name, instrument_serial_number, olwb, vm, oldb, ash, fiber) VALUES
                ('" . $analysisTime . "', '" . $data[1] . "', '" . $data[2] . "', '" . $data[3] . "', '" . $data[4] . "', '" . $data[5] . "', '" . $data[6] . "', '" . $data[7] . "', '" . $data[8] . "', '" . $data[9] . "', '" . $data[10] . "', '" . $data[11] . "', '" . $data[12] . "')";

                if ($conn->query($sql) !== TRUE) {
                    echo "Error inserting CSV data: " . $conn->error . "<br>";
                }
            } else {
                echo "Data with analysis_time $analysisTime already exists in the sample table, skipping insertion<br>";
            }
        }

        fclose($handle);

        // Set file sebagai sudah diimpor
        $updateImportedSql = "UPDATE file_data SET is_imported = 1 WHERE file_path = '$filePath'";
        $conn->query($updateImportedSql);
    }
}

// Fungsi untuk membaca folder dan file
function readFolder($folderPath, $conn) {
    $files = scandir($folderPath);

    $csvFound = false; // Menandakan apakah ada file CSV yang ditemukan

    foreach ($files as $file) {
        if ($file != "." && $file != "..") {
            $filePath = $folderPath . "/" . $file;
            $fileSize = filesize($filePath);

            insertFileData($file, $filePath, $fileSize, $conn);

            // Cek apakah file CSV
            $fileExtension = pathinfo($file, PATHINFO_EXTENSION);
            if (strtolower($fileExtension) === 'csv') {
                $csvFound = true;
                processCSVFile($filePath, $conn);
            }
        }
    }

    if ($csvFound) {
        // Jika ada file CSV, arahkan pengguna ke halaman tampil
        header("Location: datacsv.php");
        exit();
    } else {
        // Jika tidak ada file CSV, tampilkan pemberitahuan alert
        echo "<script>alert('Data Sudah Terupdate. Tidak ada file CSV yang ditemukan.')</script>";
    }
}

// Proses form jika tombol "Process Files" ditekan
if (isset($_POST['process'])) {
    // Ubah path folder sesuai dengan folder yang ingin Anda baca
    $folderPath = "CSV";

    readFolder($folderPath, $conn);
}

// Tutup koneksi
$conn->close();
?>
