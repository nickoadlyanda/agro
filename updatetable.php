<?php 
    session_start();
    if($_SESSION['status']!="login"){
        header("location:login.php?pesan=belum_login");
    }
?>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Dashboard - AJP System</title>
    <link rel="icon" type="" href="img/favicon_ajp.svg">

    <!-- Custom styles for this template-->
    <link href="css/sb-admin-2.min.css" rel="stylesheet">
    
    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Data Table-->
    <style>
        table {
            border-collapse: collapse;
            width: 100%;
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
                url: 'index.php',
                type: 'GET',
                success: function(response) {
                    $('#data-container').html(response);
                    // Memanggil fungsi untuk memberikan warna
                    colorizeOLWBfp();
                    colorizeOLWBsp();
                },
                error: function(error) {
                    console.error('Error reloading data:', error);
                }
            });
        }


                // Fungsi untuk memberikan warna pada kolom OLWB
                function colorizeOLWBfp() {
            // Mendapatkan semua elemen dengan kelas 'olwb-column'
            var olwbColumns = $('.olwb-columnfp');

            // Iterasi melalui setiap elemen dan memberikan warna berdasarkan nilai OLWB
            olwbColumns.each(function() {
                var olwbValue = parseFloat($(this).text());

                // Menghapus kelas warna sebelumnya
                $(this).removeClass('table-yellow-bg table-red-bg');

                // Menentukan kelas warna berdasarkan kondisi
                if (!isNaN(olwbValue) && olwbValue > 14 && olwbValue < 16) {
                    $(this).addClass('table-yellow-bg');
                } else if (!isNaN(olwbValue) && olwbValue >= 14) {
                    $(this).addClass('table-red-bg');
                    // Memunculkan suara alert ketika OLWB melebihi 14
                    playAlertSound();
                }
            });
        }



        // Fungsi untuk memberikan warna pada kolom OLWB
        function colorizeOLWBsp() {
            // Mendapatkan semua elemen dengan kelas 'olwb-column'
            var olwbColumns = $('.olwb-columnsp');

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
                    // Memunculkan suara alert ketika OLWB melebihi 10
                    playAlertSound();
                }
            });
        }

        // Fungsi untuk memutar suara alert
        function playAlertSound() {
            var audio = new Audio('sound/OCSound.mp3'); // Ganti dengan path file suara alert Anda
            audio.play();
        }

                // Memanggil fungsi colorizeOLWB pada saat dokumen siap
                $(document).ready(function() {
            colorizeOLWBfp();
        });

        // Memanggil fungsi colorizeOLWB pada saat dokumen siap
        $(document).ready(function() {
            colorizeOLWBsp();
        });

        // Memanggil fungsi reloadData setiap 1 menit
        setInterval(reloadData, 60000); // 60000 milidetik = 1 menit
    </script>
    <meta http-equiv="refresh" content="60">

    
</head>

<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- PANGGIL FILE SIDEBAR -->
        <?php include 'sidebar.html';?>
        <?php include 'koneksi.php';?>

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Topbar -->
                <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                    <!-- Sidebar Toggle (Topbar) -->
                    <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                        <i class="fa fa-bars"></i>
                    </button>                 

                    <!-- Topbar Navbar -->
                    <ul class="navbar-nav ml-auto">

                        <!-- Nav Item - Search Dropdown (Visible Only XS) -->
                        <li class="nav-item dropdown no-arrow d-sm-none">
                            <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-search fa-fw"></i>
                            </a>
                            <!-- Dropdown - Messages -->
                            <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in"
                                aria-labelledby="searchDropdown">
                                <form class="form-inline mr-auto w-100 navbar-search">
                                    <div class="input-group">
                                        <input type="text" class="form-control bg-light border-0 small"
                                            placeholder="Search for..." aria-label="Search"
                                            aria-describedby="basic-addon2">
                                        <div class="input-group-append">
                                            <button class="btn btn-primary" type="button">
                                                <i class="fas fa-search fa-sm"></i>
                                            </button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </li>

                        <div class="topbar-divider d-none d-sm-block"></div>

                        <!-- Nav Item - User Information -->
                        <li class="nav-item dropdown no-arrow">
                            <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <span class="mr-2 d-none d-lg-inline text-gray-600 small"><font style="text-transform: uppercase; color: #fff; background-color: #4e73df; padding: 10px; border-radius: 5px;"><?php echo $_SESSION['username']; ?></font></span>
                                <img class="img-profile rounded-circle"
                                    src="img/undraw_profile.svg">
                            </a>
                            <!-- Dropdown - User Information -->
                            <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                aria-labelledby="userDropdown">
                                <a class="dropdown-item" href="logout.php" data-toggle="modal" data-target="#logoutModal">
                                    <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Logout
                                </a>
                            </div>
                        </li>

                    </ul>

                </nav>
                <!-- End of Topbar -->

                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <div class="d-flex align-items-center justify-content-between mb-4">
                        <h1 class="h3 mb-0 text-gray-800">Update Table</h1>
                        <div class="d-flex">
                            <a href="export_pdf.php" class="btn btn-sm shadow-sm" style="background-color: maroon; color: #fff; margin-right: 10px;" title="Download PDF" hidden><i
                                    class="fas fa-file-pdf fa-sm text-white-50"></i> PDF</a>
                            <a href="export_excel.php" class="btn btn-sm shadow-sm" style="background-color: #539165; color: #fff;" title="Download Excel" hidden><i
                                    class="fas fa-file-excel fa-sm text-white-50"></i> Xlsx</a>
                        </div>
                    </div>

                    <?php
                    $data = mysqli_query($koneksi,"SELECT * FROM palmkernelkcp");
                    // menghitung data berdasarkan id
                    $jumlah_anggota = mysqli_num_rows($data);
                    ?>

                    <!-- Content Row -->
                    <div class="row" hidden="">

                        <!-- Earnings (Monthly) Card Example -->
                        <div class="col-xl-3 col-md-6 mb-4">
                            <div class="card border-left-primary shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
                                                Jumlah Tenaga Kerja</div>
                                            <div class="h5 mb-0 font-weight-bold text-gray-800"><?php echo $jumlah_anggota; ?></div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fas fa-user fa-2x text-gray-300"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <?php
                    $data = mysqli_query($koneksi,"SELECT * FROM palmkernelkcp");
                    // menghitung data berdasarkan id
                    $jumlah_sumasuk = mysqli_num_rows($data);
                    ?>

                    <?php
                    $data = mysqli_query($koneksi,"SELECT * FROM palmkernelkcp");
                    // menghitung data berdasarkan id
                    $jumlah_sukeluar = mysqli_num_rows($data);
                    ?>

                        <!-- Earnings (Monthly) Card Example -->
                        <div class="col-xl-3 col-md-6 mb-4">
                            <div class="card border-left-success shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-success text-uppercase mb-1">
                                                Surat Masuk</div>
                                            <div class="h5 mb-0 font-weight-bold text-gray-800"><?php echo $jumlah_sumasuk; ?></div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fas fa-envelope fa-2x text-gray-300"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Earnings (Monthly) Card Example -->
                        <div class="col-xl-3 col-md-6 mb-4">
                            <div class="card border-left-info shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-info text-uppercase mb-1">Surat Keluar</div>
                                            <div class="row no-gutters align-items-center">
                                                <div class="col-auto">
                                                    <div class="h5 mb-0 font-weight-bold text-gray-800"><?php echo $jumlah_sukeluar; ?></div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fas fa-envelope-open fa-2x text-gray-300"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Pending Requests Card Example -->
                        <div class="col-xl-3 col-md-6 mb-4">
                            <div class="card border-left-warning shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-warning text-uppercase mb-1">
                                                Date & Time</div>
                                            <div class="h5 mb-0 font-weight-bold text-gray-800">
                                            <p id="tanggalwaktu" style="font-size: 9.8pt; margin-bottom: 0px;"></p>
                                            <p id="jam"></p>                                        
                                            </div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fas fa-calendar fa-2x text-gray-300"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Content Row -->

                    <div class="row">

                        <!-- Area Chart -->
                        <div class="col-xl-8 col-lg-7" hidden="">
                            <div class="card shadow mb-4">
                                <!-- Card Header - Dropdown -->
                                <div
                                    class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                    <h6 class="m-0 font-weight-bold text-primary">Earnings Overview</h6>
                                    <div class="dropdown no-arrow">
                                        <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink"
                                            data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            <i class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
                                        </a>
                                        <div class="dropdown-menu dropdown-menu-right shadow animated--fade-in"
                                            aria-labelledby="dropdownMenuLink">
                                            <div class="dropdown-header">Dropdown Header:</div>
                                            <a class="dropdown-item" href="#">Action</a>
                                            <a class="dropdown-item" href="#">Another action</a>
                                            <div class="dropdown-divider"></div>
                                            <a class="dropdown-item" href="#">Something else here</a>
                                        </div>
                                    </div>
                                </div>
                                <!-- Card Body -->
                                <div class="card-body">
                                    <div class="chart-area">
                                        <canvas id="myAreaChart"></canvas>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Pie Chart -->
                        <div class="col-xl-4 col-lg-5">
                        </div>
                    </div>



                    <!-- Content Row -->
<div class="row">

<!-- Content Column -->
<div class="col-lg-6 mb-4">
    <!-- Illustrations -->
    <div class="card shadow mb-4">
        <div class="card-header border-left-primary py-3">
            <h6 class="m-0 font-weight-bold text-primary">PKE FP - B</h6>
        </div>
        <div class="card-body">
       
            <div class="text-center">
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
$query = "SELECT analysis_timepkefpb, sample_numberpkefpb, olwbpkefpb, vmpkefpb FROM ajp_pkefpb WHERE olwbpkefpb > 14 order by idpkefpb desc LIMIT 4";
$result = $conn->query($query);
$counter = 1;

if ($result->num_rows > 0) {
// Tampilkan tabel jika ada data
echo "<table>
<tr>
<th width='40px'>No</th>
<th>Analysis Time</th>
<th>Sample Number</th>
<th>OC</th>
<th>VM</th>
</tr>";
while ($row = $result->fetch_assoc()) {
// Tambahkan kelas 'olwb-column' untuk kolom OLWB
echo "<tr>
<td>{$counter}</td>
<td>{$row['analysis_timepkefpb']}</td>
<td>{$row['sample_numberpkefpb']}</td>
<td class='olwb-columnfp'>{$row['olwbpkefpb']}</td>
<td>{$row['vmpkefpb']}</td>
</tr>";
$counter++;
}
echo "</table>";
} else {
echo "No data found with OLWB exceeding 8.";
}

// Tutup koneksi
$conn->close();
?>
             </div>
        </div>
    </div>                      
</div>

                        <!-- Content Column -->
                        <div class="col-lg-6 mb-4">
    <!-- Illustrations -->
    <div class="card shadow mb-4">
        <div class="card-header border-left-primary py-3">
            <h6 class="m-0 font-weight-bold text-primary">PKE SP - B</h6>
        </div>
        <div class="card-body">
            <div class="text-center">
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
$query = "SELECT analysis_timepkespb, sample_numberpkespb, olwbpkespb, vmpkespb FROM ajp_pkespb WHERE olwbpkespb > 8 order by idpkespb desc limit 4";
$result = $conn->query($query);
$counterr = 1;

if ($result->num_rows > 0) {
// Tampilkan tabel jika ada data
echo "<table>
<tr>
<th width='40px'>No</th>
<th>Analysis Time</th>
<th>Sample Number</th>
<th>OC</th>
<th>VM</th>
</tr>";
while ($row = $result->fetch_assoc()) {
// Tambahkan kelas 'olwb-column' untuk kolom OLWB
echo "<tr>
<td>{$counterr}</td>
<td>{$row['analysis_timepkespb']}</td>
<td>{$row['sample_numberpkespb']}</td>
<td class='olwb-columnsp'>{$row['olwbpkespb']}</td>
<td>{$row['vmpkespb']}</td>
</tr>";
$counterr++;
}
echo "</table>";
} else {
echo "No data found with OLWB exceeding 8.";
}

// Tutup koneksi
$conn->close();
?>
             </div>
        </div>
    </div>                      
</div>
</div>




                    <!-- Content Row -->
                    <div class="row">

                        <!-- Content Column -->
                        <div class="col-lg-6 mb-4">
                            <!-- Illustrations -->
                            <div class="card shadow mb-4">
                                <div class="card-header border-left-primary py-3">
                                    <h6 class="m-0 font-weight-bold text-primary">Palm Kernel KCP</h6>
                                </div>
                                <div class="card-body">
                               
                                    <div class="text-center">
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
        $query = "SELECT analysis_time, sample_number, olwb, vm FROM palmkernelkcp WHERE olwb > 8 order by analysis_time desc LIMIT 4";
        $result = $conn->query($query);
        $counter = 1;

        if ($result->num_rows > 0) {
            // Tampilkan tabel jika ada data
            echo "<table>
                    <tr>
                        <th width='40px'>No</th>
                        <th>Analysis Time</th>
                        <th>Sample Number</th>
                        <th>OC</th>
                        <th>VM</th>
                    </tr>";
            while ($row = $result->fetch_assoc()) {
                // Tambahkan kelas 'olwb-column' untuk kolom OLWB
                echo "<tr>
                        <td>{$counter}</td>
                        <td>{$row['analysis_time']}
                        <td>{$row['sample_number']}</td>
                        <td class='olwb-column'>{$row['olwb']}</td>
                        <td>{$row['vm']}</td>
                    </tr>";
                    $counter++;
            }
            echo "</table>";
        } else {
            echo "No data found with OLWB exceeding 8.";
        }

        // Tutup koneksi
        $conn->close();
        ?>
                                     </div>
                                </div>
                            </div>                      
                        </div>

                                                <!-- Content Column -->
                                                <div class="col-lg-6 mb-4">
                            <!-- Illustrations -->
                            <div class="card shadow mb-4">
                                <div class="card-header border-left-primary py-3">
                                    <h6 class="m-0 font-weight-bold text-primary">Palm Kernel Incoming</h6>
                                </div>
                                <div class="card-body">
                                    <div class="text-center">
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
        $query = "SELECT analysis_timeincoming, sample_numberincoming, olwbincoming, vmincoming FROM palmkernelincoming WHERE olwbincoming > 8 order by analysis_timeincoming desc limit 4";
        $result = $conn->query($query);
        $counterr = 1;

        if ($result->num_rows > 0) {
            // Tampilkan tabel jika ada data
            echo "<table>
                    <tr>
                        <th width='40px'>No</th>
                        <th>Analysis Time</th>
                        <th>Sample Number</th>
                        <th>OC</th>
                        <th>VM</th>
                    </tr>";
            while ($row = $result->fetch_assoc()) {
                // Tambahkan kelas 'olwb-column' untuk kolom OLWB
                echo "<tr>
                <td>{$counterr}</td>
                <td>{$row['analysis_timeincoming']}</td>
                        <td>{$row['sample_numberincoming']}</td>
                        <td class='olwb-column'>{$row['olwbincoming']}</td>
                        <td>{$row['vmincoming']}</td>
                    </tr>";
                    $counterr++;
            }
            echo "</table>";
        } else {
            echo "No data found with OLWB exceeding 8.";
        }

        // Tutup koneksi
        $conn->close();
        ?>
                                     </div>
                                </div>
                            </div>                      
                        </div>
                    </div>


                    <!-- Content Row -->
                    <div class="row">

                        <!-- Content Column -->
                        <div class="col-lg-6 mb-4">
                            <!-- Illustrations -->
                            <div class="card shadow mb-4">
                                <div class="card-header border-left-primary py-3">
                                    <h6 class="m-0 font-weight-bold text-primary">CPO SampleList</h6>
                                </div>
                                <div class="card-body">
                               
                                    <div class="text-center">
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
        $query = "SELECT sample_number, olwb, vm FROM cpo WHERE olwb > 8 order by id desc LIMIT 4";
        $result = $conn->query($query);
        $counter = 1;

        if ($result->num_rows > 0) {
            // Tampilkan tabel jika ada data
            echo "<table>
                    <tr>
                        <th width='40px'>No</th>
                        <th>Analysis Time</th>
                        <th>Sample Number</th>
                        <th>OC</th>
                        <th>VM</th>
                    </tr>";
            while ($row = $result->fetch_assoc()) {
                // Tambahkan kelas 'olwb-column' untuk kolom OLWB
                echo "<tr>
                        <td>{$counter}</td>
                        <td>{$row['analysis_timecpo']}</td>
                        <td>{$row['sample_number']}</td>
                        <td class='olwb-column'>{$row['olwb']}</td>
                        <td>{$row['vm']}</td>
                    </tr>";
                    $counter++;
            }
            echo "</table>";
        } else {
            echo "No data found with OLWB exceeding 8.";
        }

        // Tutup koneksi
        $conn->close();
        ?>
                                     </div>
                                </div>
                            </div>                      
                        </div>

                                                <!-- Content Column -->
                                                <div class="col-lg-6 mb-4">
                            <!-- Illustrations -->
                            <div class="card shadow mb-4">
                                <div class="card-header border-left-primary py-3">
                                    <h6 class="m-0 font-weight-bold text-primary">CPKO SampleList</h6>
                                </div>
                                <div class="card-body">
                                    <div class="text-center">
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
        $query = "SELECT sample_numberincoming, olwbincoming, vmincoming FROM cpko WHERE olwbincoming > 8 order by idincoming desc limit 4";
        $result = $conn->query($query);
        $counterr = 1;

        if ($result->num_rows > 0) {
            // Tampilkan tabel jika ada data
            echo "<table>
                    <tr>
                        <th width='40px'>No</th>
                        <th>Sample Number</th>
                        <th>OC</th>
                        <th>VM</th>
                    </tr>";
            while ($row = $result->fetch_assoc()) {
                // Tambahkan kelas 'olwb-column' untuk kolom OLWB
                echo "<tr>
                <td>{$counterr}</td>
                <td>{$row['analysis_timecpko']}</td>
                        <td>{$row['sample_numberincoming']}</td>
                        <td class='olwb-column'>{$row['olwbincoming']}</td>
                        <td>{$row['vmincoming']}</td>
                    </tr>";
                    $counterr++;
            }
            echo "</table>";
        } else {
            echo "No data found with OLWB exceeding 8.";
        }

        // Tutup koneksi
        $conn->close();
        ?>
                                     </div>
                                </div>
                            </div>                      
                        </div>
                    </div>


                    

                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->

            <!-- Footer -->
            <?php include 'footer.html';?>
            <!-- End of Footer -->

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

    <!-- Logout Modal-->
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                    <a class="btn btn-primary" href="logout.php">Logout</a>
                </div>
            </div>
        </div>
    </div>

        <!-- Jam -->
   <script type="text/javascript">
    window.onload = function() { jam(); }
   
    function jam() {
     var e = document.getElementById('jam'),
     d = new Date(), h, m, s;
     h = d.getHours();
     m = set(d.getMinutes());
     s = set(d.getSeconds());
   
     e.innerHTML = h +':'+ m +':'+ s;
   
     setTimeout('jam()', 1000);
    }
   
    function set(e) {
     e = e < 10 ? '0'+ e : e;
     return e;
    }
   </script>

   <!-- Tanggal -->
   <script>
var tw = new Date();
if (tw.getTimezoneOffset() == 0) (a=tw.getTime() + ( 7 *60*60*1000))
else (a=tw.getTime());
tw.setTime(a);
var tahun= tw.getFullYear ();
var hari= tw.getDay ();
var bulan= tw.getMonth ();
var tanggal= tw.getDate ();
var hariarray=new Array("Minggu,","Senin,","Selasa,","Rabu,","Kamis,","Jum'at,","Sabtu,");
var bulanarray=new Array("Januari","Februari","Maret","April","Mei","Juni","Juli","Agustus","September","Oktober","Nopember","Desember");
document.getElementById("tanggalwaktu").innerHTML = hariarray[hari]+" "+tanggal+" "+bulanarray[bulan]+" "+tahun;
</script>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
                integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous">
            </script>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous">
            </script>

    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin-2.min.js"></script>

    <!-- Page level plugins -->
    <script src="vendor/chart.js/Chart.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="js/demo/chart-area-demo.js"></script>
    <script src="js/demo/chart-pie-demo.js"></script>

</body>

</html>