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

// Mengambil data dari tabel
$sql = "SELECT created_atsp, analysis_timesp, product_namesp, product_codesp, sample_typesp, sample_numbersp, sample_commentsp, instrument_namesp, instrument_serial_numbersp, olwbsp, vmsp, oldbsp, ashsp, fibersp FROM secondpreess";
$result = $conn->query($sql);

// Cek eksekusi query
if (!$result) {
    die("Query execution failed: " . $conn->error);
}

if ($result->num_rows > 0) {
    // Load library PHPExcel
    require_once 'PHPExcel.php';

    // Membuat objek PHPExcel
    $objPHPExcel = new PHPExcel();

    // Mengatur judul kolom
    $objPHPExcel->setActiveSheetIndex(0);
    $objPHPExcel->getActiveSheet()->setCellValue('A1', 'Created at');
    $objPHPExcel->getActiveSheet()->setCellValue('B1', 'Analysis Time');
    $objPHPExcel->getActiveSheet()->setCellValue('C1', 'Product Name');
    $objPHPExcel->getActiveSheet()->setCellValue('D1', 'Product Code');
    $objPHPExcel->getActiveSheet()->setCellValue('E1', 'Sample Type');
    $objPHPExcel->getActiveSheet()->setCellValue('F1', 'Sample Number');
    $objPHPExcel->getActiveSheet()->setCellValue('G1', 'Sample Comment');
    $objPHPExcel->getActiveSheet()->setCellValue('H1', 'Instrument Name');
    $objPHPExcel->getActiveSheet()->setCellValue('I1', 'Instrument Serial Number');
    $objPHPExcel->getActiveSheet()->setCellValue('J1', 'OLWB');
    $objPHPExcel->getActiveSheet()->setCellValue('K1', 'VM');
    $objPHPExcel->getActiveSheet()->setCellValue('L1', 'OLDB');
    $objPHPExcel->getActiveSheet()->setCellValue('M1', 'Ash');
    $objPHPExcel->getActiveSheet()->setCellValue('N1', 'Fiber');

    // Mengisi data dari database ke file Excel
    $row = 2;
    while ($row_data = $result->fetch_assoc()) {
        $objPHPExcel->getActiveSheet()->setCellValue('A'.$row, $row_data['created_atsp']);
        $objPHPExcel->getActiveSheet()->setCellValue('B'.$row, $row_data['analysis_timesp']);
        $objPHPExcel->getActiveSheet()->setCellValue('C'.$row, $row_data['product_namesp']);
        $objPHPExcel->getActiveSheet()->setCellValue('D'.$row, $row_data['product_codesp']);
        $objPHPExcel->getActiveSheet()->setCellValue('E'.$row, $row_data['sample_typesp']);
        $objPHPExcel->getActiveSheet()->setCellValue('F'.$row, $row_data['sample_numbersp']);
        $objPHPExcel->getActiveSheet()->setCellValue('G'.$row, $row_data['sample_commentsp']);
        $objPHPExcel->getActiveSheet()->setCellValue('H'.$row, $row_data['instrument_namesp']);
        $objPHPExcel->getActiveSheet()->setCellValue('I'.$row, $row_data['instrument_serial_numbersp']);
        $objPHPExcel->getActiveSheet()->setCellValue('J'.$row, $row_data['olwbsp']);
        $objPHPExcel->getActiveSheet()->setCellValue('K'.$row, $row_data['vmsp']);
        $objPHPExcel->getActiveSheet()->setCellValue('L'.$row, $row_data['oldbsp']);
        $objPHPExcel->getActiveSheet()->setCellValue('M'.$row, $row_data['ashsp']);
        $objPHPExcel->getActiveSheet()->setCellValue('N'.$row, $row_data['fibersp']);

        // Menentukan warna latar belakang berdasarkan kondisi pada kolom OLWB
        $olwbValue = $row_data['olwbsp'];
        if ($olwbValue > 8 && $olwbValue < 10) {
            $objPHPExcel->getActiveSheet()->getStyle('J'.$row)->getFill()->applyFromArray(array('type' => PHPExcel_Style_Fill::FILL_SOLID, 'startcolor' => array('rgb' => 'FFFF00'))); // Warna kuning
        } elseif ($olwbValue > 10) {
            $objPHPExcel->getActiveSheet()->getStyle('J'.$row)->getFill()->applyFromArray(array('type' => PHPExcel_Style_Fill::FILL_SOLID, 'startcolor' => array('rgb' => 'FF0000'))); // Warna merah
        }

        $row++;
    }

    // Mengatur header untuk file Excel
    header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
    header('Content-Disposition: attachment;filename="firstpressmachine.xlsx"');
    header('Cache-Control: max-age=0');

    // Menggunakan writer untuk menyimpan file Excel
    $objWriter = PHPExcel_IOFactory::createWriter($objPHPExcel, 'Excel2007');
    $objWriter->save('php://output');
    exit;
} else {
    echo "Tidak ada data yang ditemukan dalam tabel";
}

$conn->close();
?>
