<style type="text/css">
    /* Tambahkan gaya untuk warna latar belakang kuning */
    .table-yellow-bg {
        background-color: yellow;
    }
    /* Tambahkan gaya untuk warna latar belakang merah */
    .table-red-bg {
        background-color: red;
        color: white; /* Untuk memastikan teks terlihat dengan baik di latar belakang merah */
    }
</style>

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

// Query untuk mengambil data dari tabel ajp_pkefpb
$query = "SELECT * FROM ajp_pkefpb ORDER BY idpkefpb DESC";

$result = $conn->query($query);

// Array untuk menyimpan total data OLWB dan total data OLWB di bawah batas tertentu per bulan
$totalDataPerMonth = array();
$totalDataBelow14PerMonth = array();

if ($result->num_rows > 0) {
    // Mulai tabel
    echo "<table>
            <tr>
                <th>No.</th>
                <th>Created at</th>
                <th>Analysis Time</th>
                <th>Product Name</th>
                <th>Product Code</th>
                <th>Sample Type</th>
                <th>Sample Number</th>
                <th>Sample Comment</th>
                <th>Instrument Name</th>
                <th>Instrument Serial Number</th>
                <th>OLWB</th>
                <th>VM</th>
                <th>OLDB</th>
                <th>NOS</th>
            </tr>";

    // Tampilkan data
    $counter = 1;
    while ($row = $result->fetch_assoc()) {
        // Mendapatkan bulan dan tahun dari analysis_timepkefpb
        $monthYear = date('M Y', strtotime($row['analysis_timepkefpb']));

        // Menambahkan data ke total untuk bulan tertentu
        if (!isset($totalDataPerMonth[$monthYear])) {
            $totalDataPerMonth[$monthYear] = 0;
            $totalDataBelow14PerMonth[$monthYear] = 0;
        }

        $totalDataPerMonth[$monthYear]++;

        // Hitung jumlah data OLWB di bawah 14
        if ($row['olwbpkefpb'] < 14) {
            $totalDataBelow14PerMonth[$monthYear]++;
        }

        // Tentukan kelas CSS berdasarkan nilai OLWB
        $olwbClass = '';
        if ($row['olwbpkefpb'] > 14 && $row['olwbpkefpb'] < 16) {
            $olwbClass = 'table-yellow-bg';
        } elseif ($row['olwbpkefpb'] >= 16) {
            $olwbClass = 'table-red-bg';
        }

        // Tampilkan baris dengan kelas CSS yang ditentukan
        echo "<tr>
                <td>{$counter}</td>
                <td>{$row['created_atpkefpb']}</td>
                <td>{$row['analysis_timepkefpb']}</td>
                <td>{$row['product_namepkefpb']}</td>
                <td>{$row['product_codepkefpb']}</td>
                <td>{$row['sample_typepkefpb']}</td>
                <td>{$row['sample_numberpkefpb']}</td>
                <td>{$row['sample_commentpkefpb']}</td>
                <td>{$row['instrument_namepkefpb']}</td>
                <td>{$row['instrument_serial_numberpkefpb']}</td>
                <td class='$olwbClass'>" . (is_numeric($row['olwbpkefpb']) ? number_format(floatval($row['olwbpkefpb']), 2) : '-') . "</td>
                <td>{$row['vmpkefpb']}</td>
                <td>{$row['oldbpkefpb']}</td>
                <td>{$row['nospkefpb']}</td>
            </tr>";

        $counter++;
    }

    // Selesai tabel
    echo "</table>";

    // Tampilkan persentase data OLWB di bawah 14% per bulan
    echo "<h2>Persentase Data OLWB di Bawah 14 (First Press) per Bulan</h2>";
    echo "<table border='1'>
            <tr>
                <th>Bulan</th>
                <th>Total Data</th>
                <th>Total Data OLWB < 14</th>
                <th>Persentase Data OLWB < 14</th>
            </tr>";

    foreach ($totalDataPerMonth as $monthYear => $totalData) {
        $percentageBelow14 = ($totalData > 0) ? ($totalDataBelow14PerMonth[$monthYear] / $totalData) * 100 : 0;

        echo "<tr>
                <td>{$monthYear}</td>
                <td>{$totalData}</td>
                <td>{$totalDataBelow14PerMonth[$monthYear]}</td>
                <td>" . number_format($percentageBelow14, 2) . "%</td>
              </tr>";
    }

    echo "</table>";
} else {
    echo "No data found.";
}

// Tutup koneksi
$conn->close();
?>
