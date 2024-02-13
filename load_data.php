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

// Query untuk mengambil data dari tabel palmkernelkcp
$query = "SELECT * FROM palmkernelkcp order by id DESC";
$result = $conn->query($query);

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
                <th>FFA</th>
            </tr>";

    // Tampilkan data
    $counter = 1;
    while ($row = $result->fetch_assoc()) {
        // Tentukan kelas CSS berdasarkan nilai OLWB
        $olwbClass = '';
        if ($row['olwb'] > 8 && $row['olwb'] < 10) {
            $olwbClass = 'table-yellow-bg';
        } elseif ($row['olwb'] >= 10) {
            $olwbClass = 'table-red-bg';
        }

        // Tampilkan baris dengan kelas CSS yang ditentukan
        echo "<tr>
                <td>{$counter}</td>
                <td>{$row['created_at']}</td>
                <td>{$row['analysis_time']}</td>
                <td>{$row['product_name']}</td>
                <td>{$row['product_code']}</td>
                <td>{$row['sample_type']}</td>
                <td>{$row['sample_number']}</td>
                <td>{$row['sample_comment']}</td>
                <td>{$row['instrument_name']}</td>
                <td>{$row['instrument_serial_number']}</td>
                <td class='$olwbClass'>{$row['olwb']}</td>
                <td>{$row['vm']}</td>
                <td>{$row['oldb']}</td>
                <td>{$row['ffa']}</td>
            </tr>";

        $counter++;
    }

    // Selesai tabel
    echo "</table>";
} else {
    echo "No data found.";
}

// Tutup koneksi
$conn->close();
?>
