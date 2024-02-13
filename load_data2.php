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
$query = "SELECT * FROM palmkernelincoming order by idincoming DESC";
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
        if ($row['olwbincoming'] > 8 && $row['olwbincoming'] < 10) {
            $olwbClass = 'table-yellow-bg';
        } elseif ($row['olwbincoming'] >= 10) {
            $olwbClass = 'table-red-bg';
        }

        // Tampilkan baris dengan kelas CSS yang ditentukan
        echo "<tr>
                <td>{$counter}</td>
                <td>{$row['created_atincoming']}</td>
                <td>{$row['analysis_timeincoming']}</td>
                <td>{$row['product_nameincoming']}</td>
                <td>{$row['product_codeincoming']}</td>
                <td>{$row['sample_typeincoming']}</td>
                <td>{$row['sample_numberincoming']}</td>
                <td>{$row['sample_commentincoming']}</td>
                <td>{$row['instrument_nameincoming']}</td>
                <td>{$row['instrument_serial_numberincoming']}</td>
                <td class='$olwbClass'>{$row['olwbincoming']}</td>
                <td>{$row['vmincoming']}</td>
                <td>{$row['oldbincoming']}</td>
                <td>{$row['ffaincoming']}</td>
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
