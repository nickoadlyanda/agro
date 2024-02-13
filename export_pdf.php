<?php
// Menggunakan TCPDF
require_once('tcpdf/tcpdf.php');

// Koneksi ke database
$servername = "192.168.0.100";
$username = "spsibela_nxartz";
$password = "k94560627";
$dbname = "spsibela_managementspsi";

// Membuat koneksi
$conn = new mysqli($servername, $username, $password, $dbname);

// Memeriksa koneksi
if ($conn->connect_error) {
    die("Koneksi gagal: " . $conn->connect_error);
}

// Query untuk mengambil data dari database
$query = "SELECT nama_tenagakerja, registernumber, tempatlahir_tenagakerja, tanggallahir_tenagakerja, alamat_tenagakerja FROM data_tenagakerja order by nama_tenagakerja ASC";
$result = $conn->query($query);
           
// Membuat instance TCPDF
$pdf = new TCPDF('L', 'mm', 'F4', true, 'UTF-8', false);
$pdf->SetMargins(10, 10, 10, 0);
$pdf->AddPage();

// Header
$pdf->SetFont('times', 'B', 10);
$pdf->SetFillColor(150, 180, 200);
$pdf->Cell(10, 8, 'No.', 1, 0, 'C', true);
$pdf->Cell(75, 8, 'Nama', 1, 0, 'C', true);
$pdf->Cell(20, 8, 'Register', 1, 0, 'C', true);
$pdf->Cell(30, 8, 'Tempat Lahir', 1, 0, 'C', true);
$pdf->Cell(20, 8, 'Tgl Lahir', 1, 0, 'C', true);
$pdf->Cell(160, 8, 'Alamat', 1, 1, 'C', true);

// Mengambil data dan menambahkan nomor urut
$nomor = 1;
$pdf->SetFont('times', '', 9);

while ($row = $result->fetch_assoc()) {
    $pdf->Cell(10, 5, $nomor, 1, 0, 'C');
    $pdf->Cell(75, 5, strtoupper ($row['nama_tenagakerja']), 1, 0, 'L');
    $pdf->Cell(20, 5, $row['registernumber'], 1, 0, 'C');
    $pdf->Cell(30, 5, ucwords(strtolower($row['tempatlahir_tenagakerja'])), 1, 0, 'C');
    $pdf->Cell(20, 5, $row['tanggallahir_tenagakerja'], 1, 0, 'C');
    $pdf->Cell(160, 5, ucwords(strtolower($row['alamat_tenagakerja'])), 1, 1, 'L');
    
    $nomor++;

            }
// Output PDF
$pdf->Output('DataTKBM_SPSI_PelabuhanBelawan.pdf', 'D');

// Tutup koneksi database
$conn->close();
            
?>
