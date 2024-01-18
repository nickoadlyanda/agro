<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Tag meta untuk refresh otomatis setiap 1 menit -->
    <meta http-equiv="refresh" content="60">
    <title>Alerted Data Viewer</title>
    <style>
        table {
            border-collapse: collapse;
            width: 50%;
            margin-top: 20px;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
        }
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
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <script>
        // Fungsi untuk memuat ulang data setiap 1 menit
        function reloadData() {
            console.log('Reloading data...');
            $.ajax({
                url: 'dashboard.php',
                type: 'GET',
                success: function(response) {
                    $('#data-container').html(response);
                    // Memanggil fungsi untuk memberikan warna
                    colorizeOLWB();
                },
                error: function(error) {
                    console.error('Error reloading data:', error);
                }
            });
        }

        // Fungsi untuk memberikan warna pada kolom OLWB
        function colorizeOLWB() {
            // Mendapatkan semua elemen dengan kelas 'olwb-column'
            var olwbColumns = $('.olwb-column');

            // Iterasi melalui setiap elemen dan memberikan warna berdasarkan nilai OLWB
            olwbColumns.each(function() {
                var olwbValue = parseFloat($(this).text());

                // Menghapus kelas warna sebelumnya
                $(this).removeClass('table-yellow-bg table-red-bg');

                // Menentukan kelas warna berdasarkan kondisi
                if (!isNaN(olwbValue) && olwbValue > 8 && olwbValue < 10) {
                    $(this).addClass('table-yellow-bg');
                } else if (!isNaN(olwbValue) && olwbValue >= 10) {
                    $(this).addClass('table-red-bg');
                }
            });
        }

        // Memanggil fungsi colorizeOLWB pada saat dokumen siap
        $(document).ready(function() {
            colorizeOLWB();
        });

        // Memanggil fungsi reloadData setiap 1 menit
        setInterval(reloadData, 60000); // 60000 milidetik = 1 menit
    </script>
</head>
<body>
    <!-- Container untuk menampilkan data -->
    <div id="data-container">
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

        // Query untuk mengambil data dari tabel sample yang OLWB-nya melebihi 8
        $query = "SELECT sample_number, olwb, vm FROM sample WHERE olwb > 8 order by id DESC";
        $result = $conn->query($query);

        if ($result->num_rows > 0) {
            // Tampilkan tabel jika ada data
            echo "<table>
                    <tr>
                        <th>Sample Number</th>
                        <th>OLWB</th>
                        <th>VM</th>
                    </tr>";
            while ($row = $result->fetch_assoc()) {
                // Tambahkan kelas 'olwb-column' untuk kolom OLWB
                echo "<tr>
                        <td>{$row['sample_number']}</td>
                        <td class='olwb-column'>{$row['olwb']}</td>
                        <td>{$row['vm']}</td>
                    </tr>";
            }
            echo "</table>";
        } else {
            echo "No data found with OLWB exceeding 8.";
        }

        // Tutup koneksi
        $conn->close();
        ?>
    </div>
</body>
</html>
