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
            width: 100%;
            margin-top: 10px;
            color: black;
            overflow: scroll;
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
                <div class="container-fluid" style="max-width: 100%;">

                    <!-- Page Heading -->
                    <div class="d-flex align-items-center justify-content-between mb-4">
                        <h1 class="h3 mb-0 text-gray-800">OEE KCP Monthly Report</h1>
                    </div>








                    <!-- Content Row -->

                    <div class="row">

<!-- Area Chart - First Press -->
<div class="col-xl-6 col-lg-7" hidden="">
    <div class="card shadow mb-4">
        <!-- Card Header - Dropdown -->
        <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
            <h6 class="m-0 font-weight-bold text-primary">First Press</h6>
        </div>
        <!-- Card Body -->
        <div class="card-body">
            <div>
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
                $totalDataPerMonthFirstPress = array();
                $totalDataBelow14PerMonthFirstPress = array();

                if ($result->num_rows > 0) {
                    // Tampilkan data
                    $counter = 1;
                    while ($row = $result->fetch_assoc()) {
                        // Mendapatkan bulan dan tahun dari analysis_timepkefpb
                        $monthYear = date('M Y', strtotime($row['analysis_timepkefpb']));

                        // Menambahkan data ke total untuk bulan tertentu
                        if (!isset($totalDataPerMonthFirstPress[$monthYear])) {
                            $totalDataPerMonthFirstPress[$monthYear] = 0;
                            $totalDataBelow14PerMonthFirstPress[$monthYear] = 0;
                        }

                        $totalDataPerMonthFirstPress[$monthYear]++;

                        // Hitung jumlah data OLWB di bawah 14
                        if ($row['olwbpkefpb'] < 14) {
                            $totalDataBelow14PerMonthFirstPress[$monthYear]++;
                        }
                    }
                    // Tampilkan jumlah data dari "First Press" tabel
                    echo "<table border='1'>
                            <tr>
                                <th>Bulan</th>
                                <th>Total Data</th>
                                <th>Total Data < 14</th>
                                <th>% < 14</th>
                            </tr>";

                    foreach ($totalDataPerMonthFirstPress as $monthYear => $totalData) {
                        $percentageBelow14 = ($totalData > 0) ? ($totalDataBelow14PerMonthFirstPress[$monthYear] / $totalData) * 100 : 0;

                        echo "<tr>
                                <td>{$monthYear}</td>
                                <td>{$totalData}</td>
                                <td>{$totalDataBelow14PerMonthFirstPress[$monthYear]}</td>
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
            </div>
        </div>
    </div>
</div>

<!-- Area Chart - Second Press -->
<div class="col-xl-6 col-lg-7" hidden="">
    <div class="card shadow mb-4">
        <!-- Card Header - Dropdown -->
        <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
            <h6 class="m-0 font-weight-bold text-primary">Second Press</h6>
        </div>
        <!-- Card Body -->
        <div class="card-body">
            <div>
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
                $totalDataPerMonthSecondPress = array();
                $totalDataBelow14PerMonthSecondPress = array();

                if ($result->num_rows > 0) {
                    // Tampilkan data
                    $counter = 1;
                    while ($row = $result->fetch_assoc()) {
                        // Mendapatkan bulan dan tahun dari analysis_timepkespb
                        $monthYear = date('M Y', strtotime($row['analysis_timepkespb']));

                        // Menambahkan data ke total untuk bulan tertentu
                        if (!isset($totalDataPerMonthSecondPress[$monthYear])) {
                            $totalDataPerMonthSecondPress[$monthYear] = 0;
                            $totalDataBelow14PerMonthSecondPress[$monthYear] = 0;
                        }

                        $totalDataPerMonthSecondPress[$monthYear]++;

                        // Hitung jumlah data OLWB di bawah 14
                        if ($row['olwbpkespb'] < 8.01) {
                            $totalDataBelow14PerMonthSecondPress[$monthYear]++;
                        }
                    }

                    // Tampilkan jumlah data dari "Second Press" tabel
                    echo "<table border='1'>
                            <tr>
                                <th>Bulan</th>
                                <th>Total Data</th>
                                <th>Total Data < 8</th>
                                <th>% < 8</th>
                            </tr>";

                    foreach ($totalDataPerMonthSecondPress as $monthYear => $totalData) {
                        $percentageBelow8 = ($totalData > 0) ? ($totalDataBelow14PerMonthSecondPress[$monthYear] / $totalData) * 100 : 0;

                        echo "<tr>
                                <td>{$monthYear}</td>
                                <td>{$totalData}</td>
                                <td>{$totalDataBelow14PerMonthSecondPress[$monthYear]}</td>
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
            </div>
        </div>
    </div>
</div>


  <!-- Content Row -->

<!-- Earnings (Monthly) Card Example -->
<div class="col-xl-4 col-md-6 mb-4">
    <div class="card border-left-primary shadow h-100 py-2">
        <div class="card-body">
            <div class="row no-gutters align-items-center">
                <div class="col mr-2">
                    <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
                        Availability</div>
                    <div class="h5 mb-0 font-weight-bold text-gray-800">%</div>
                </div>
                <div class="col-auto">
                    <i class="fas fa-industry fa-2x text-gray-300"></i>
                </div>
            </div>
        </div>
    </div>
</div>





<!-- Earnings (Monthly) Card Example -->
<div class="col-xl-4 col-md-6 mb-4">
    <div class="card border-left-success shadow h-100 py-2">
        <div class="card-body">
            <div class="row no-gutters align-items-center">
                <div class="col mr-2">
                    <div class="text-xs font-weight-bold text-success text-uppercase mb-1">
                        Quality</div>
                    <div class="h5 mb-0 font-weight-bold text-gray-800">
                                 <?php
                                  // Display Quality % for last month
                $lastMonthYear = date('M Y', strtotime('0 month')); // Calculate last month
                $lastMonthQualityPercentage = ($totalDataPerMonthFirstPress[$lastMonthYear] + $totalDataPerMonthSecondPress[$lastMonthYear] > 0) ? (($totalDataBelow14PerMonthFirstPress[$lastMonthYear] + $totalDataBelow14PerMonthSecondPress[$lastMonthYear]) / ($totalDataPerMonthFirstPress[$lastMonthYear] + $totalDataPerMonthSecondPress[$lastMonthYear])) * 100 : 0;

                echo "<p>{$lastMonthYear}: " . number_format($lastMonthQualityPercentage, 2) . "%</p>";
                                 ?>       
       
                    </div>
                </div>
                <div class="col-auto">
                    <i class="fas fa-chart-line fa-2x text-gray-300"></i>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Earnings (Monthly) Card Example -->
<div class="col-xl-4 col-md-6 mb-4">
    <div class="card border-left-info shadow h-100 py-2">
        <div class="card-body">
            <div class="row no-gutters align-items-center">
                <div class="col mr-2">
                    <div class="text-xs font-weight-bold text-info text-uppercase mb-1">Performance</div>
                    <div class="row no-gutters align-items-center">
                        <div class="col-auto">
                            <div class="h5 mb-0 font-weight-bold text-gray-800">%</div>
                        </div>
                    </div>
                </div>
                <div class="col-auto">
                    <i class="fas fa-chart-simple fa-2x text-gray-300"></i>
                </div>
            </div>
        </div>
            
<!-- Pending Requests Card Example -->
<div class="col-xl-3 col-md-6 mb-4" hidden="">
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
            </div>
            </div>

            <div class="row">
<!-- Summary Table -->
<div class="col-xl-12 col-lg-5 col-md-12">
    <div class="card shadow mb-4">
        <!-- Card Header - Dropdown -->
        <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
            <h6 class="m-0 font-weight-bold text-primary">Summary</h6>
        </div>
        <!-- Card Body -->
        <div class="card-body">
            <div>
                <?php
                
                // Tampilkan tabel ringkasan yang mencakup total keduanya
                echo "<table id='table-quality' border='1' class='table-striped table-hover table-bordered'>
                        <tr>
                            <th>Bulan</th>
                            <th>Total Data First Press</th>
                            <th>Total Data < 14 First Press</th>
                            <th>Total Data Second Press</th>
                            <th>Total Data < 8 Second Press</th>
                            <th>Total Data Combined</th>
                            <th>Total Data Combined < 14 + < 8</th>
                            <th>Quality %</th>
                        </tr>";

                foreach ($totalDataPerMonthFirstPress as $monthYear => $totalData) {
                    $totalBelow14FirstPress = isset($totalDataBelow14PerMonthFirstPress[$monthYear]) ? $totalDataBelow14PerMonthFirstPress[$monthYear] : 0;
                    $totalBelow8SecondPress = isset($totalDataBelow14PerMonthSecondPress[$monthYear]) ? $totalDataBelow14PerMonthSecondPress[$monthYear] : 0;

                    $totalFirstPress = isset($totalDataPerMonthFirstPress[$monthYear]) ? $totalDataPerMonthFirstPress[$monthYear] : 0;
                    $totalSecondPress = isset($totalDataPerMonthSecondPress[$monthYear]) ? $totalDataPerMonthSecondPress[$monthYear] : 0;

                    $totalCombined = $totalFirstPress + $totalSecondPress;
                    $totalCombinedBelow14And8 = $totalBelow14FirstPress + $totalBelow8SecondPress;

                    $percentageCombinedBelow14And8 = ($totalCombined > 0) ? ($totalCombinedBelow14And8 / $totalCombined) * 100 : 0;

                    echo "<tr>
                            <td>{$monthYear}</td>
                            <td>{$totalFirstPress}</td>
                            <td>{$totalBelow14FirstPress}</td>
                            <td>{$totalSecondPress}</td>
                            <td>{$totalBelow8SecondPress}</td>
                            <td>{$totalCombined}</td>
                            <td>{$totalCombinedBelow14And8}</td>
                            <td>" . number_format($percentageCombinedBelow14And8, 2) . "%</td>
                          </tr>";
                }

                echo "</table>";
                ?>
            </div>
        </div>
    </div>

                        

                



                        <!-- Pie Chart -->
                        <div class="col-xl-4 col-lg-5">
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


    <script type="text/javascript">
        $(document).ready(function() {
        var table = $('#tabel-quality').DataTable( {
        scrollY: "300px",
        scrollX: true,
        scrollCollapse: true
} );
} );
    </script>

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