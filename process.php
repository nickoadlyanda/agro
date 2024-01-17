<?php
// Koneksi ke database
$servername = "localhost";
$username = "root";
$password = ""; // Anda dapat menyimpan kata sandi dalam variabel lingkungan
$dbname = "agro";

$conn = new mysqli($servername, $username, $password, $dbname);

// Cek koneksi
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Fungsi untuk menyimpan informasi file ke database
function insertFileData($fileName, $filePath, $fileSize, $conn) {
    // Cek apakah file dengan nama yang sama sudah ada
    $checkSql = "SELECT * FROM file_data WHERE file_name = ?";
    $checkStmt = $conn->prepare($checkSql);
    $checkStmt->bind_param("s", $fileName);
    $checkStmt->execute();
    $result = $checkStmt->get_result();

    if ($result->num_rows == 0) {
        // Jika tidak ada, masukkan data baru
        $sql = "INSERT INTO file_data (file_name, file_path, file_size, is_imported) VALUES (?, ?, ?, 1)";
        $insertStmt = $conn->prepare($sql);
        $insertStmt->bind_param("ssi", $fileName, $filePath, $fileSize);

        if ($insertStmt->execute()) {
            echo "(Update!) File data inserted successfully<br>";
        } else {
            error_log("Error inserting file data: " . $insertStmt->error);
            echo "Error inserting file data.<br>";
        }

        $insertStmt->close();
    } else {
        echo "File with the same name already exists, skipping insertion for $fileName<br>";
    }

    $checkStmt->close();
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
            $checkExistingSql = "SELECT * FROM sample WHERE analysis_time = ?";
            $checkExistingStmt = $conn->prepare($checkExistingSql);
            $checkExistingStmt->bind_param("s", $analysisTime);
            $checkExistingStmt->execute();
            $existingResult = $checkExistingStmt->get_result();

            if ($existingResult->num_rows == 0) {
                // Sesuaikan dengan struktur CSV Anda dan sesuaikan query SQL
                $sql = "INSERT INTO sample (analysis_time, product_name, product_code, sample_type, sample_number, sample_comment, instrument_name, instrument_serial_number, olwb, vm, oldb, ash, fiber) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
                $insertStmt = $conn->prepare($sql);
                $insertStmt->bind_param("sssssssssssss", $analysisTime, $data[1], $data[2], $data[3], $data[4], $data[5], $data[6], $data[7], $data[8], $data[9], $data[10], $data[11], $data[12]);

                if ($insertStmt->execute()) {
                    echo "CSV data inserted successfully<br>";
                } else {
                    error_log("Error inserting CSV data: " . $insertStmt->error);
                    echo "Error inserting CSV data.<br>";
                }

                $insertStmt->close();
            } else {
                echo "Data with analysis_time $analysisTime already exists in the sample table, skipping insertion<br>";
            }
            $checkExistingStmt->close();
        }

        fclose($handle);

        // Set file sebagai sudah diimpor
        $updateImportedSql = "UPDATE file_data SET is_imported = 1 WHERE file_path = ?";
        $updateImportedStmt = $conn->prepare($updateImportedSql);
        $updateImportedStmt->bind_param("s", $filePath);
        $updateImportedStmt->execute();
        $updateImportedStmt->close();
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
