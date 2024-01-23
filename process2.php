<?php
// Koneksi ke database
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "agro";

$conn = new mysqli($servername, $username, $password, $dbname);

// Cek koneksi
if ($conn->connect_error) {
    die("Koneksi gagal: " . $conn->connect_error);
}

// Fungsi untuk menyimpan informasi file ke database
function insertFileData($fileNamesp, $filePathsp, $fileSizesp, $conn) {
    // Cek apakah file dengan nama yang sama sudah ada
    $checkSql = "SELECT * FROM file_datasp WHERE file_namesp = ?";
    $checkStmt = $conn->prepare($checkSql);
    $checkStmt->bind_param("s", $fileNamesp);
    $checkStmt->execute();
    $result = $checkStmt->get_result();

    if ($result->num_rows == 0) {
        // Jika tidak ada, masukkan data baru
        $sql = "INSERT INTO file_datasp (file_namesp, file_pathsp, file_sizesp, is_importedsp) VALUES (?, ?, ?, 1)";
        $insertStmt = $conn->prepare($sql);
        $insertStmt->bind_param("ssi", $fileNamesp, $filePathsp, $fileSizesp);

        if ($insertStmt->execute()) {
            echo "(Update!) Data file berhasil dimasukkan<br>";
        } else {
            error_log("Error saat memasukkan data file: " . $insertStmt->error);
            echo "Error saat memasukkan data file.<br>";
        }

        $insertStmt->close();
    } else {
        echo "File dengan nama yang sama sudah ada, melewati proses penyisipan untuk $fileNamesp<br>";
    }

    $checkStmt->close();
}

// Fungsi untuk membaca isi file CSV dan menyimpan ke database
function processCSVFile($filePathsp, $conn) {
    // Baca file CSV
    if (($handle = fopen($filePathsp, "r")) !== FALSE) {
        // Lewati baris pertama (header)
        fgetcsv($handle, 1000, ",");

        // Baca baris per baris dari file CSV
        while (($data = fgetcsv($handle, 1000, ",")) !== FALSE) {
            $analysisTimesp = $data[0];

            // Cek apakah data dengan analysis_time yang sama sudah ada dalam tabel secondpress
            $checkExistingSql = "SELECT * FROM secondpress WHERE analysis_timesp = ?";
            $checkExistingStmt = $conn->prepare($checkExistingSql);
            $checkExistingStmt->bind_param("s", $analysisTimesp);
            $checkExistingStmt->execute();
            $existingResult = $checkExistingStmt->get_result();

            if ($existingResult->num_rows == 0) {
                // Sesuaikan dengan struktur CSV Anda dan sesuaikan query SQL
                $sql = "INSERT INTO secondpress (analysis_timesp, product_namesp, product_codesp, sample_typesp, sample_numbersp, sample_commentsp, instrument_namesp, instrument_serial_numbersp, olwbsp, vmsp, oldbsp, ashsp, fibersp) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
                $insertStmt = $conn->prepare($sql);
                $insertStmt->bind_param("sssssssssssss", $analysisTimesp, $data[1], $data[2], $data[3], $data[4], $data[5], $data[6], $data[7], $data[8], $data[9], $data[10], $data[11], $data[12]);

                if ($insertStmt->execute()) {
                    echo "Data CSV berhasil dimasukkan<br>";
                } else {
                    error_log("Error saat memasukkan data CSV: " . $insertStmt->error);
                    echo "Error saat memasukkan data CSV.<br>";
                }

                $insertStmt->close();
            } else {
                echo "Data dengan analysis_time $analysisTimesp sudah ada dalam tabel secondpress, melewati proses penyisipan<br>";
            }
            $checkExistingStmt->close();
        }

        fclose($handle);

        // Set file sebagai sudah diimpor
        $updateImportedSql = "UPDATE file_datasp SET is_importedsp = 1 WHERE file_pathsp = ?";
        $updateImportedStmt = $conn->prepare($updateImportedSql);
        $updateImportedStmt->bind_param("s", $filePathsp);
        $updateImportedStmt->execute();
        $updateImportedStmt->close();
    }
}

// Ubah path folder sesuai dengan folder yang ingin Anda baca
$folderPath = "CSV2";

// Baca folder dan file
$files = scandir($folderPath);

$csvFound = false; // Menandakan apakah ada file CSV yang ditemukan

foreach ($files as $file) {
    if ($file != "." && $file != "..") {
        $filePathsp = $folderPath . "/" . $file;
        $fileSizesp = filesize($filePathsp);

        // Hanya proses file yang belum diimpor
        $checkImportedSql = "SELECT * FROM file_datasp WHERE file_pathsp = ?";
        $checkImportedStmt = $conn->prepare($checkImportedSql);
        $checkImportedStmt->bind_param("s", $filePathsp);
        $checkImportedStmt->execute();
        $importedResult = $checkImportedStmt->get_result();

        if ($importedResult->num_rows == 0) {
            // File belum diimpor, proses
            insertFileData($file, $filePathsp, $fileSizesp, $conn);

            // Cek apakah file CSV
            $fileExtension = pathinfo($file, PATHINFO_EXTENSION);
            if (strtolower($fileExtension) === 'csv') {
                $csvFound = true;
                processCSVFile($filePathsp, $conn);
            }
        }

        $checkImportedStmt->close();
    }
}

// Jika ada file CSV, arahkan pengguna ke halaman tampil
if ($csvFound) {
    header("Location: secondpress.php");
    exit();
} else {
    // Jika tidak ada file CSV baru, tampilkan pemberitahuan alert
    echo "<script>alert('Tidak ada file CSV baru yang ditemukan.')</script>";
}

// Tutup koneksi
$conn->close();
?>
