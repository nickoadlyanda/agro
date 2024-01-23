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

// Query untuk mengambil data dari tabel firstpress
$query = "SELECT * FROM secondpress order by idsp DESC";
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
                <th>Ash</th>
                <th>Fiber</th>
            </tr>";

    // Tampilkan data
    $counter = 1;
    while ($row = $result->fetch_assoc()) {
        // Tentukan kelas CSS berdasarkan nilai OLWB
        $olwbClass = '';
        if ($row['olwbsp'] > 8 && $row['olwbsp'] < 10) {
            $olwbClass = 'table-yellow-bg';
        } elseif ($row['olwbsp'] >= 10) {
            $olwbClass = 'table-red-bg';
        }

        // Tampilkan baris dengan kelas CSS yang ditentukan
        echo "<tr>
                <td>{$counter}</td>
                <td>{$row['created_atsp']}</td>
                <td>{$row['analysis_timesp']}</td>
                <td>{$row['product_namesp']}</td>
                <td>{$row['product_codesp']}</td>
                <td>{$row['sample_typesp']}</td>
                <td>{$row['sample_numbersp']}</td>
                <td>{$row['sample_commentsp']}</td>
                <td>{$row['instrument_namesp']}</td>
                <td>{$row['instrument_serial_numbersp']}</td>
                <td class='$olwbClass'>{$row['olwbsp']}</td>
                <td>{$row['vmsp']}</td>
                <td>{$row['oldbsp']}</td>
                <td>{$row['ashsp']}</td>
                <td>{$row['fibersp']}</td>
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
