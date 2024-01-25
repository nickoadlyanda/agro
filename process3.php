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

// Fungsi untuk akses Map Network Drive dengan HTTP Basic Authentication
function authenticateMapNetworkDrive($drivePath, $username, $password) {
    if (!isset($_SERVER['PHP_AUTH_USER']) || !isset($_SERVER['PHP_AUTH_PW']) ||
        $_SERVER['PHP_AUTH_USER'] != $username || $_SERVER['PHP_AUTH_PW'] != $password) {
        header('WWW-Authenticate: Basic realm="Restricted Access"');
        header('HTTP/1.0 401 Unauthorized');
        echo 'Authentication required.';
        exit;
    }
}

// Folder path Map Network Drive
$networkDrivePath = "Z:";  // Sesuaikan dengan drive huruf yang digunakan pada Map Network Drive
$networkDriveUsername = "lab";
$networkDrivePassword = "Mb@#]7Dq";

// Authentikasi untuk akses Map Network Drive
authenticateMapNetworkDrive($networkDrivePath, $networkDriveUsername, $networkDrivePassword);

// Fungsi untuk menyimpan informasi file ke database
function insertFileData($fileNamesp, $filePathsp, $fileSizesp, $conn) {
    $checkSql = "SELECT * FROM file_datasp WHERE file_namesp = ?";
    $checkStmt = $conn->prepare($checkSql);
    $checkStmt->bind_param("s", $fileNamesp);
    $checkStmt->execute();
    $result = $checkStmt->get_result();

    if ($result->num_rows == 0) {
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
    if (($handle = fopen($filePathsp, "r")) !== FALSE) {
        fgetcsv($handle, 1000, ",");

        while (($data = fgetcsv($handle, 1000, ",")) !== FALSE) {
            $analysisTimesp = $data[0];

            $checkExistingSql = "SELECT * FROM secondpress WHERE analysis_timesp = ?";
            $checkExistingStmt = $conn->prepare($checkExistingSql);
            $checkExistingStmt->bind_param("s", $analysisTimesp);
            $checkExistingStmt->execute();
            $existingResult = $checkExistingStmt->get_result();

            if ($existingResult->num_rows == 0) {
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

        $updateImportedSql = "UPDATE file_datasp SET is_importedsp = 1 WHERE file_pathsp = ?";
        $updateImportedStmt = $conn->prepare($updateImportedSql);
        $updateImportedStmt->bind_param("s", $filePathsp);
        $updateImportedStmt->execute();
        $updateImportedStmt->close();
    }
}

// Ubah path folder sesuai dengan folder yang ingin Anda baca
$folderPath = $networkDrivePath . "/PRD/Lab/FOSS/CSV";

// Baca folder dan file
$files = scandir($folderPath);

$csvFound = false;

foreach ($files as $file) {
    if ($file != "." && $file != "..") {
        $filePathsp = $folderPath . "/" . $file;
        $fileSizesp = filesize($filePathsp);

        $checkImportedSql = "SELECT * FROM file_datasp WHERE file_pathsp = ?";
        $checkImportedStmt = $conn->prepare($checkImportedSql);
        $checkImportedStmt->bind_param("s", $filePathsp);
        $checkImportedStmt->execute();
        $importedResult = $checkImportedStmt->get_result();

        if ($importedResult->num_rows == 0) {
            insertFileData($file, $filePathsp, $fileSizesp, $conn);

            $fileExtension = pathinfo($file, PATHINFO_EXTENSION);
            if (strtolower($fileExtension) === 'csv') {
                $csvFound = true;
                processCSVFile($filePathsp, $conn);
            }
        }

        $checkImportedStmt->close();
    }
}

if ($csvFound) {
    header("Location: secondpress.php");
    exit();
} else {
    echo "<script>alert('Tidak ada file CSV baru yang ditemukan.')</script>";
}

$conn->close();
?>
