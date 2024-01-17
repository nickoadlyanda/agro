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
        /* Tambahkan gaya untuk alert */
        .alert {
            background-color: #f44336;
            color: white;
            padding: 10px;
            margin-bottom: 15px;
            display: none;
        }
    </style>
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <script>
        // Variabel untuk menyimpan nilai OLWB terakhir
        var lastOLWBValue = 0;

        // Fungsi untuk menampilkan alert dan memainkan suara jika nilai OLWB melebihi 8
        function showOLWBAlert(olwbValue) {
            // Mendapatkan elemen audio
            var audioElement = document.getElementById('alert-sound');

            // Menampilkan alert
            $('.alert').text('Pemberitahuan, Nilai OLWB melebihi batas, ' + olwbValue).show();

            // Memainkan suara
            audioElement.play();

            // Menyimpan nilai OLWB terakhir
            lastOLWBValue = olwbValue;
        }

        // Fungsi untuk memeriksa nilai OLWB
        function checkOLWBValue() {
            // Mendapatkan nilai OLWB terakhir dari elemen tabel dengan ID 'last-olwb'
            var olwbCell = $('#last-olwb');
            var olwbValue = parseFloat(olwbCell.text());

            console.log('Last OLWB Value:', lastOLWBValue);
            console.log('Current OLWB Value:', olwbValue);

            // Memeriksa apakah nilai OLWB melebihi 8 dan berbeda dari nilai terakhir
            if (!isNaN(olwbValue) && olwbValue > 8 && olwbValue !== lastOLWBValue) {
                console.log('Showing alert for OLWB value:', olwbValue);
                showOLWBAlert(olwbValue);
            }
        }

        // Fungsi untuk memuat ulang data setiap 1 menit
        function reloadData() {
            console.log('Reloading data...');
            $.ajax({
                url: 'load_data.php',
                type: 'GET',
                success: function(response) {
                    $('#data-container').html(response);
                    // Memeriksa nilai OLWB setelah memuat ulang data
                    checkOLWBValue();
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
    <!-- Container untuk menampilkan alert -->
    <div class="alert" style="display: none;"></div>

    <!-- Container untuk menampilkan data -->
    <div id="data-container"></div>

    <!-- Skrip JavaScript untuk memproses file secara otomatis -->
    <script>
        $(document).ready(function() {
            // Fungsi untuk memproses file CSV secara otomatis
            function processCSV() {
                $.ajax({
                    url: 'process.php',
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

    <!-- Elemen untuk memainkan suara -->
    <audio id="alert-sound" src="sound/soundOLWB.mp3"></audio>
</body>
</html>
