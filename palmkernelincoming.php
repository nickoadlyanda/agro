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
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <meta http-equiv="refresh" content="60">

    <title>Data First Press - AJP System</title>
    <link rel="icon" type="" href="img/favicon_ajp.svg">

    <!-- Custom styles for this template -->
    <link href="css/sb-admin-2.min.css" rel="stylesheet">
     <!-- Custom fonts for this template -->
     
    <link rel="stylesheet" href="css/font-awesome-animation.min.css">
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this page -->
    <link href="vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
    
<script src="https://kit.fontawesome.com/900ebaa28a.js" crossorigin="anonymous"></script>


<style type="text/css">
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
        /* Tambahkan gaya untuk warna latar belakang kuning */
        .table-green-bg {
            background-color: #74E291;
            color: white;
        }
        /* Tambahkan gaya untuk warna latar belakang merah */
        .table-red-bg {
            background-color: red;
            color: white; /* Untuk memastikan teks terlihat dengan baik di latar belakang merah */
        }
</style>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <script>
        // Variabel untuk menyimpan nilai OLWB terakhir dan sample_number terakhir
        var lastOLWBValue = 0;
        var lastSampleNumber = 0;

        // Fungsi untuk menampilkan alert dan memainkan suara jika nilai OLWB melebihi 8
        function showOLWBAlert(olwbValue, sampleNumberValue) {
            // Mendapatkan elemen audio
            var audioElement = document.getElementById('alert-sound');

            // Menampilkan alert
            $('.alert').text('Pemberitahuan, Mesin ' + sampleNumberValue + ' Nilai OLWB melebihi batas, ' + olwbValue).show();

            // Memainkan suara
            audioElement.play();

            // Menyimpan nilai OLWB terakhir dan sample_number terakhir
            lastOLWBValue = olwbValue;
            lastSampleNumber = sampleNumberValue;
        }

        // Fungsi untuk memeriksa nilai OLWB
        function checkOLWBValue() {
            // Mendapatkan nilai OLWB terakhir dari elemen tabel dengan ID 'last-olwb'
            var olwbCell = $('#last-olwb');
            var olwbValue = parseFloat(olwbCell.text());

            // Mendapatkan nilai sample_number terakhir dari elemen tabel dengan ID 'last-sample-number'
            var sampleNumberCell = $('#last-sample-number');
            var sampleNumberValue = sampleNumberCell.text();

            console.log('Last OLWB Value:', lastOLWBValue);
            console.log('Current OLWB Value:', olwbValue);

            // Memeriksa apakah nilai OLWB melebihi 8 dan berbeda dari nilai terakhir
            if (!isNaN(olwbValue) && olwbValue > 8 && olwbValue !== lastOLWBValue) {
                console.log('Showing alert for OLWB value:', olwbValue);
                showOLWBAlert(olwbValue, sampleNumberValue);
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
  
</head>
<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">

                <!-- PANGGIL FILE SIDEBAR -->
                <?php include 'sidebar.html';?>

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

                    <!-- Topbar Search -->
                    <form
                        class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
                        <div class="input-group" hidden>
                            <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..."
                                aria-label="Search" aria-describedby="basic-addon2">
                            <div class="input-group-append">
                                <button class="btn btn-primary" type="button">
                                    <i class="fas fa-search fa-sm"></i>
                                </button>
                            </div>
                        </div>
                    </form>

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
                                <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
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
                    <nav aria-label="breadcrumb">
                      <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.php">Dashboard</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Data Palm Kernel Incoming</li>
                      </ol>
                    </nav>

                    <?php
                    include 'koneksi.php';
                    $data = mysqli_query($koneksi,"SELECT * FROM palmkernelincoming");
                    // menghitung data berdasarkan id
                    $jumlah_data = mysqli_num_rows($data);
                    ?>

                    <div class="button-function" style="margin-bottom: 10px;">
                    <a href="form-tenagakerja.php" class="btn btn-primary btn-icon-split btn-sm" hidden>
                        <span class="icon text-white-50">
                            <i class="fas fa-plus" title="Tambah Data"></i>
                        </span>
                        <span class="text" hidden></span>
                    </a>

                    <a href="export_pdf.php" class="btn btn btn-icon-split btn-sm" style="background-color: maroon; color: #fff" hidden>
                        <span class="icon text-white-50">
                            <i class="fas fa-file-pdf" title="Download PDF"></i>
                        </span>
                        <span class="text" hidden></span>
                    </a>

                    <a href="export_excel_incoming.php" class="btn btn btn-icon-split btn-sm" style="background-color: #304D30; color: #fff">
                        <span class="icon text-white-50">
                            <i class="fas fa-file-excel" title="Download Excel"></i> Download
                        </span>
                        <span class="text" hidden></span>
                    </a>                                      

                    <a href="#" class="btn btn-warning btn-icon-split btn-sm" style="cursor: default; float: right;">
                        <span class="icon text-white-50">
                            <i class="fas fa-user"></i>
                        </span>
                        <span class="text"><?php echo $jumlah_data; ?></span>
                    </a>
                    </div>
                    <br>
                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header border-left-primary py-3" style="background-color: #16213E;">
                            <h6 class="m-0 font-weight-bold" style="color: #fff">Data Palm Kernel Incoming<a href="process2.php"><i class="fas fa-sync fa-spin" style="float:right; color: #fff;"></i></a></h6>

                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" style="font-size: 0.9rem;" width="100%" cellspacing="0">
                                    <thead>
                                        <tr style="background: #EEEEEE;">
                                            <th>#</th>
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
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                        <th>#</th>
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
                                        </tr>
                                    </tfoot>
                                    <tbody>
               
                            <?php 
            include 'koneksi.php';
            //Script Menampilkan Data berdasarkan id terakhir
            $data = mysqli_query($koneksi,"select * from palmkernelincoming order by idincoming DESC");
            //nomor
            $no = 1;
            //mengambil data
            while($d = mysqli_fetch_array($data)){

            ?>

                                        <tr style="font-size:10pt; color:#16213E;">
                                        <td style="vertical-align: middle;"><?php echo $no++; ?></</td>
                                        <td style="vertical-align: middle; text-transform: uppercase;"><?php echo $d['created_atincoming']; ?></td>
                                            <td style="vertical-align: middle; text-transform: uppercase;"><?php echo $d['analysis_timeincoming']; ?></td>
                                            <td style="vertical-align: middle; text-transform: uppercase;"><?php echo $d['product_nameincoming']; ?></td>
                                            <td style="vertical-align: middle; text-transform: uppercase;"><?php echo $d['product_codeincoming']; ?></td>
                                            <td style="vertical-align: middle;"><?php echo $d['sample_typeincoming']; ?></td>
                                            <td style="vertical-align: middle;"><?php echo $d['sample_numberincoming']; ?></td>
                                            <td style="vertical-align: middle;"><?php echo $d['sample_commentincoming']; ?></td>
                                            <td style="vertical-align: middle; text-transform: uppercase;"><?php echo $d['instrument_nameincoming']; ?></td>
                                            <td style="vertical-align: middle; text-transform: uppercase;"><?php echo $d['instrument_serial_numberincoming']; ?></td>
                                            <td style="vertical-align: middle; text-transform: uppercase;" class="<?php echo ($d['olwbincoming'] > 0 && $d['olwbincoming'] < 50) ? 'table-red-bg' : ($d['olwbincoming'] > 50 ? 'table-green-bg' : ''); ?>">
                                            <?php echo $d['olwbincoming']; ?></td>
                                            <td style="vertical-align: middle; text-transform: uppercase;"><?php echo $d['vmincoming']; ?></td>
                                            <td style="vertical-align: middle;"><?php echo $d['oldbincoming']; ?></td>
                                            <td style="vertical-align: middle;"><?php echo $d['ffaincoming']; ?></td>
                                        </tr>
                                        <?php } ?>
                                    </tbody>
                                </table>
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

        <!-- Skrip JavaScript untuk memproses file secara otomatis -->
        <script>
        $(document).ready(function() {
            // Fungsi untuk memproses file CSV secara otomatis
            function processCSV() {
                $.ajax({
                    url: 'process2.php',
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
    <audio id="alert-sound" src="sound/soundOLWB3.mp3"></audio>

    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin-2.min.js"></script>

    <!-- Page level plugins -->
    <script src="vendor/datatables/jquery.dataTables.min.js"></script>
    <script src="vendor/datatables/dataTables.bootstrap4.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="js/demo/datatables-demo.js"></script>

</body>

</html>