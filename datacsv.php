<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Data Viewer</title>
    <style>
        table {
            border-collapse: collapse;
            width: 100%;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
    <h1>Data Viewer</h1>
    <form action="process.php" method="post">
        <button type="submit" name="process">Update</button>
    </form>

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

    // Query untuk mengambil data dari tabel sample
    $query = "SELECT * FROM sample";
    $result = $conn->query($query);

    if ($result->num_rows > 0) {
        // Tampilkan tabel jika ada data
        echo "<table>";
        echo "<tr>
                <th>No.</th>
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
        $counter = 1;
        while ($row = $result->fetch_assoc()) {
            echo "<tr>
                    <td>{$counter}</td>
                    <td>{$row['analysis_time']}</td>
                    <td>{$row['product_name']}</td>
                    <td>{$row['product_code']}</td>
                    <td>{$row['sample_type']}</td>
                    <td>{$row['sample_number']}</td>
                    <td>{$row['sample_comment']}</td>
                    <td>{$row['instrument_name']}</td>
                    <td>{$row['instrument_serial_number']}</td>
                    <td>{$row['olwb']}</td>
                    <td>{$row['vm']}</td>
                    <td>{$row['oldb']}</td>
                    <td>{$row['ash']}</td>
                    <td>{$row['fiber']}</td>
                </tr>";
                $counter++;
        }

        echo "</table>";
    } else {
        echo "No data found in the 'sample' table.";
    }

    // Tutup koneksi
    $conn->close();
    ?>
</body>
</html>
