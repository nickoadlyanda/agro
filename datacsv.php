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
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <script>
        // Fungsi untuk memuat ulang data setiap 1 menit
        function reloadData() {
            $.ajax({
                url: 'load_data.php', // Ganti sesuai dengan nama file load_data.php
                type: 'GET',
                success: function(response) {
                    $('#data-container').html(response);
                },
                error: function(error) {
                    console.error('Error reloading data:', error);
                }
            });
        }

        // Memanggil fungsi reloadData setiap 1 menit
        setInterval(reloadData, 60000); // 60000 milidetik = 1 menit
    </script>
<!-- Tag meta untuk refresh otomatis setiap 1 menit -->
<meta http-equiv="refresh" content="60">
</head>
<body>
    <h1>Data Viewer</h1>

    <!-- Container untuk menampilkan data -->
    <div id="data-container"></div>

    <!-- Skrip JavaScript untuk memproses file secara otomatis -->
    <script>
        $(document).ready(function() {
            // Fungsi untuk memproses file CSV secara otomatis
            function processCSV() {
                $.ajax({
                    url: 'process.php', // Ganti sesuai dengan nama file process.php
                    type: 'POST',
                    success: function(response) {
                        console.log('CSV processing successful:', response);
                        reloadData(); // Memuat ulang data setelah pemrosesan selesai
                    },
                    error: function(error) {
                        console.error('Error processing CSV:', error);
                    }
                });
            }

            // Memanggil fungsi processCSV saat halaman dimuat
            processCSV();
        });
    </script>
</body>
</html>
