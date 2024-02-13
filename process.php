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

function authenticateMapNetworkDrive($drivePath, $username, $password) {
    if (!isset($_SERVER['PHP_AUTH_USER']) || !isset($_SERVER['PHP_AUTH_PW']) ||
        $_SERVER['PHP_AUTH_USER'] != $username || $_SERVER['PHP_AUTH_PW'] != $password) {
        header('WWW-Authenticate: Basic realm="Restricted Access"');
        header('HTTP/1.0 401 Unauthorized');
        echo 'Authentication required.';
        exit;
    }
}

$networkDrivePath = "Z:"; 
$networkDriveUsername = "lab";
$networkDrivePassword = "Mb@#]7Dq";

authenticateMapNetworkDrive($networkDrivePath, $networkDriveUsername, $networkDrivePassword);

ini_set('max_execution_time', 300);

function insertFileData($fileName, $filePath, $fileSize, $conn) {
    $checkSql = "SELECT * FROM file_data_palmkernelkcp WHERE file_name = ?";
    $checkStmt = $conn->prepare($checkSql);
    $checkStmt->bind_param("s", $fileName);
    $checkStmt->execute();
    $result = $checkStmt->get_result();

    if ($result->num_rows == 0) {
        // Simpan hasil filemtime() ke dalam variabel
        $fileModifiedTime = filemtime($filePath);

        $sql = "INSERT INTO file_data_palmkernelkcp (file_name, file_path, file_size, date_modified_kcp, is_imported) VALUES (?, ?, ?, ?, 1)";
        $insertStmt = $conn->prepare($sql);
        $insertStmt->bind_param("ssis", $fileName, $filePath, $fileSize, $fileModifiedTime);

        if ($insertStmt->execute()) {
            echo "(Update!) Data file berhasil dimasukkan<br>";
        } else {
            error_log("Error saat memasukkan data file: " . $insertStmt->error);
            echo "Error saat memasukkan data file.<br>";
        }

        $insertStmt->close();
    } else {
        echo "File dengan nama yang sama sudah ada, melewati proses penyisipan untuk $fileName<br>";
    }

    $checkStmt->close();
}

function processCSVFile($filePath, $conn) {
    if (($handle = fopen($filePath, "r")) !== FALSE) {
        fgetcsv($handle, 1000, ",");

        while (($data = fgetcsv($handle, 1000, ",")) !== FALSE) {
            $analysisTime = $data[0];

            $checkExistingSql = "SELECT * FROM palmkernelkcp WHERE analysis_time = ?";
            $checkExistingStmt = $conn->prepare($checkExistingSql);
            $checkExistingStmt->bind_param("s", $analysisTime);
            $checkExistingStmt->execute();
            $existingResult = $checkExistingStmt->get_result();

            if ($existingResult->num_rows == 0) {
                $sql = "INSERT INTO palmkernelkcp (analysis_time, product_name, product_code, sample_type, sample_number, sample_comment, instrument_name, instrument_serial_number, olwb, vm, oldb, ffa) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
                $insertStmt = $conn->prepare($sql);
                $insertStmt->bind_param("ssssssssssss", $analysisTime, $data[1], $data[2], $data[3], $data[4], $data[5], $data[6], $data[7], $data[8], $data[9], $data[10], $data[11]);

                if ($insertStmt->execute()) {
                    echo "Data CSV berhasil dimasukkan<br>";
                } else {
                    error_log("Error saat memasukkan data CSV: " . $insertStmt->error);
                    echo "Error saat memasukkan data CSV.<br>";
                }

                $insertStmt->close();
            } else {
                echo "Data dengan analysis_time $analysisTime sudah ada dalam tabel palmkernelkcp, melewati proses penyisipan<br>";
            }
            $checkExistingStmt->close();
        }

        fclose($handle);

        $updateImportedSql = "UPDATE file_data_palmkernelkcp SET is_imported = 1 WHERE file_path = ?";
        $updateImportedStmtkcp = $conn->prepare($updateImportedSql);
        $updateImportedStmtkcp->bind_param("s", $filePath);
        $updateImportedStmtkcp->execute();
        $updateImportedStmtkcp->close();
    }
}

$folderPath = $networkDrivePath . "PRD/Lab/FOSS/CSV/CSV";
$files = scandir($folderPath);
$fileTimestamps = array();

foreach ($files as $file) {
    if ($file != "." && $file != "..") {
        if (strpos($file, "Palm Kernel KCP") === 0 && pathinfo($file, PATHINFO_EXTENSION) === 'csv') {
            $filePath = $folderPath . "/" . $file;
            $fileTimestamps[$file] = filemtime($filePath); // Simpan time stamp setiap file
        }
    }
}

// Urutkan array berdasarkan waktu pembuatan (time stamp)
asort($fileTimestamps);

$csvFound = false;

foreach ($fileTimestamps as $file => $timestamp) {
    $filePath = $folderPath . "/" . $file;
    $fileSize = filesize($filePath);

    $checkImportedSql = "SELECT * FROM file_data_palmkernelkcp WHERE file_path = ?";
    $checkImportedStmt = $conn->prepare($checkImportedSql);

    if (!$checkImportedStmt) {
        die("Error in preparing statement: " . $conn->error);
    }

    $checkImportedStmt->bind_param("s", $filePath);
    $checkImportedStmt->execute();

    if ($checkImportedStmt->error) {
        die("Error in execution: " . $checkImportedStmt->error);
    }

    $importedResult = $checkImportedStmt->get_result();

    if ($importedResult->num_rows == 0) {
        insertFileData($file, $filePath, $fileSize, $conn);
        processCSVFile($filePath, $conn);
        $csvFound = true; // Catat bahwa setidaknya satu file CSV telah diimpor
    }

    $checkImportedStmt->close();
}

if ($csvFound) {
    header("Location: palmkernelkcp.php");
    exit();
} else {
    echo "<script>alert('Tidak ada file CSV baru yang ditemukan.')</script>";
    header("Location: palmkernelkcp.php");
}

$conn->close();
?>
