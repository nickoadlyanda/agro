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

// Query untuk mengambil data dari tabel ajp_pkespb
$query = "SELECT * FROM ajp_pkespb ORDER BY idpkespb DESC";

$result = $conn->query($query);

// Array untuk menyimpan total data OLWB dan total data OLWB di bawah batas tertentu per bulan
$totalDataPerMonth = array();
$totalDataBelow8PerMonth = array();

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
                <th>ASH</th>
                <th>Fiber</th>
            </tr>";

    // Tampilkan data
    $counter = 1;
    while ($row = $result->fetch_assoc()) {
        // Mendapatkan bulan dan tahun dari analysis_timepkespb
        $monthYear = date('M Y', strtotime($row['analysis_timepkespb']));

        // Menambahkan data ke total untuk bulan tertentu
        if (!isset($totalDataPerMonth[$monthYear])) {
            $totalDataPerMonth[$monthYear] = 0;
            $totalDataBelow8PerMonth[$monthYear] = 0;
        }

        $totalDataPerMonth[$monthYear]++;

        // Hitung jumlah data OLWB di bawah 8
        if ($row['olwbpkespb'] < 8.01) {
            $totalDataBelow8PerMonth[$monthYear]++;
        }

        // Tentukan kelas CSS berdasarkan nilai OLWB
        $olwbClass = '';
        if ($row['olwbpkespb'] > 8 && $row['olwbpkespb'] < 10) {
            $olwbClass = 'table-yellow-bg';
        } elseif ($row['olwbpkespb'] >= 10) {
            $olwbClass = 'table-red-bg';
        }

        // Tampilkan baris dengan kelas CSS yang ditentukan
        echo "<tr>
                <td>{$counter}</td>
                <td>{$row['created_atpkespb']}</td>
                <td>{$row['analysis_timepkespb']}</td>
                <td>{$row['product_namepkespb']}</td>
                <td>{$row['product_codepkespb']}</td>
                <td>{$row['sample_typepkespb']}</td>
                <td>{$row['sample_numberpkespb']}</td>
                <td>{$row['sample_commentpkespb']}</td>
                <td>{$row['instrument_namepkespb']}</td>
                <td>{$row['instrument_serial_numberpkespb']}</td>
                <td class='$olwbClass'>" . (is_numeric($row['olwbpkespb']) ? number_format(floatval($row['olwbpkespb']), 2) : '-') . "</td>
                <td>{$row['vmpkespb']}</td>
                <td>{$row['oldbpkespb']}</td>
                <td>{$row['ashpkespb']}</td>
                <td>{$row['fiberpkespb']}</td>
            </tr>";

        $counter++;
    }

    // Selesai tabel
    echo "</table>";

    // Tampilkan persentase data OLWB di bawah 8% per bulan
    echo "<h2>Persentase Data OLWB di Bawah 8 (Second Press) per Bulan</h2>";
    echo "<table border='1'>
            <tr>
                <th>Bulan</th>
                <th>Total Data</th>
                <th>Total Data OLWB < 8</th>
                <th>Persentase Data OLWB < 8</th>
            </tr>";

    foreach ($totalDataPerMonth as $monthYear => $totalData) {
        $percentageBelow8 = ($totalData > 0) ? ($totalDataBelow8PerMonth[$monthYear] / $totalData) * 100 : 0;

        echo "<tr>
                <td>{$monthYear}</td>
                <td>{$totalData}</td>
                <td>{$totalDataBelow8PerMonth[$monthYear]}</td>
                <td>" . number_format($percentageBelow8, 2) . "%</td>
              </tr>";
    }

    echo "</table>";
} else {
    echo "No data found.";
}

// Tutup koneksi
$conn->close();
?>
