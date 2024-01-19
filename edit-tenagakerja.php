<?php 
    session_start();
    if($_SESSION['status']!="login"){
        header("location:login.php?pesan=belum_login");
    }
    ?>
<!DOCTYPE html>
<?php include 'koneksi.php'; ?>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Ubah Data Tenaga Kerja - SPSI Belawan</title>
    <link rel="icon" type="" href="img/favicon.svg">
    <link rel="stylesheet" href="css/font-awesome-animation.min.css">

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
                    integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

    <!-- Custom fonts for this template -->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/sb-admin-2.min.css" rel="stylesheet">

    <!-- Custom styles for this page -->
    <link href="vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">

<style type="text/css">
        .nama-tenagakerja {
            color: #fff;
            background-color:#4e73df;
            padding:4px;
            border-radius:5px;
            text-transform: uppercase;
        }
    </style>
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

                <?php include('koneksi.php'); ?> 
                <?php
                                include 'koneksi.php';
                                $tenagakerja_id = $_GET['tenagakerja_id'];
                                $data = mysqli_query($koneksi,"SELECT * FROM data_tenagakerja WHERE tenagakerja_id='$tenagakerja_id'");
                                while($d = mysqli_fetch_array($data)){
                                ?>
                <!-- Begin Page Content -->
                <div class="container-fluid">
                    <!-- Page Heading -->
                    <h4 class="h4 mb-2 text-gray-800"><i class="fa fa-users"></i> UBAH DATA <?php echo '<span class="nama-tenagakerja">' . $d['nama_tenagakerja'] . '</span>'; ?></style></h4>
                       <div class="col-lg-12 mb-4">

                        <nav aria-label="breadcrumb">
                      <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.php">Dashboard</a></li>
                        <li class="breadcrumb-item"><a href="data-tenagakerja.php">Data Tenaga Kerja</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Ubah Data</li>
                      </ol>
                    </nav>
                            <!-- Illustrations -->
                            <div class="card shadow mb-4">
                                <div class="card-header border-left-primary py-3" style="background-color: #16213E;">
                                    <h6 class="m-0 font-weight-bold" style="color: #fff"><i class="fa fa-edit" aria-hidden="true"></i> Ubah Data</h6>
                                </div>
                                <div class="card-body">
                                <?php
                                include 'koneksi.php';
                                $tenagakerja_id = $_GET['tenagakerja_id'];
                                $data = mysqli_query($koneksi,"SELECT * FROM data_tenagakerja WHERE tenagakerja_id='$tenagakerja_id'");
                                while($d = mysqli_fetch_array($data)){
                                ?>
                                <form action="process/syncedit-tenagakerja.php" method="POST" enctype="multipart/form-data">
                                <div class="form-group row">
                                    <div class="col-sm-12 mb-3 mb-sm-0">
                                        <input type="hidden" class="form-control form-control-user" id="exampleFirstName" placeholder="Register Map" name="tenagakerja_id" value="<?php echo $d['tenagakerja_id']; ?>" required="required">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <div class="col-sm-12 mb-3 mb-sm-0">
                                        <input type="text" class="form-control form-control-user" id="exampleFirstName" placeholder="Register Map" name="regmap" value="<?php echo $d['regmap']; ?>" required="required">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <div class="col-sm-12 mb-3 mb-sm-0">
                                        <input type="text" class="form-control form-control-user" id="exampleFirstName" placeholder="Nama Lengkap" style="text-transform: uppercase;" name="nama_tenagakerja" value="<?php echo $d['nama_tenagakerja']; ?>" required="required">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                        <input type="text" class="form-control form-control-user" id="exampleFirstName" placeholder="Tempat Lahir" style="text-transform: uppercase;" name="tempatlahir_tenagakerja" value="<?php echo $d['tempatlahir_tenagakerja']; ?>">
                                    </div>
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                        <input type="date" class="form-control form-control-user" placeholder="Tanggal Lahir" name="tanggallahir_tenagakerja" value="<?php echo $d['tanggallahir_tenagakerja']; ?>">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <div class="col-sm-12 mb-3 mb-sm-0">
                                        <textarea placeholder="Alamat Lengkap" class="form-control form-control-user" style="height: 100px; text-transform: uppercase;" name="alamat_tenagakerja"><?php echo $d['alamat_tenagakerja']; ?></textarea>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                        <input type="number" class="form-control form-control-user" id="exampleFirstName"
                                            placeholder="Register" name="registernumber" maxlength="9999" value="<?php echo $d['registernumber']; ?>">
                                    </div>
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                        <input type="number" class="form-control form-control-user" id="exampleFirstName"
                                            placeholder="Regu" name="regunumber" maxlength="999" value="<?php echo $d['regunumber']; ?>">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                        <select class="form-control form-control-user" name="lokasisektor" >
                                            <option value="<?php echo $d['lokasisektor']; ?>"><?php echo $d['lokasisektor']; ?></option>
                                            <option value="-">--Sektor--</option>
                                            <option value="Sektor 01 (I)">Sektor 01 ( I )</option>
                                            <option value="Sektor 02 (II)">Sektor 02 (II)</option>
                                            <option value="Sektor 03 (III)">Sektor 03 ( III )</option>
                                            <option value="Sektor 04 (IV)">Sektor 04 ( IV )</option>
                                        </select>
                                    </div>
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                        <select class="form-control form-control-user" name="agama_tenagakerja">
                                            <option value="<?php echo $d['agama_tenagakerja']; ?>"><?php echo $d['agama_tenagakerja']; ?></option>
                                            <option value="-">--Agama--</option>
                                            <option value="Islam">Islam</option>
                                            <option value="Kristen">Kristen Katolik / Protestan</option>
                                            <option value="Hindu">Hindu</option>
                                            <option value="Budha">Budha</option>
                                            <option value="Konghucu">Konghucu</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                        <select class="form-control form-control-user" name="sex">
                                            <option value="<?php echo $d['sex']; ?>"><?php echo $d['sex']; ?></option>
                                            <option value="-">--Jenis Kelamin--</option>
                                            <option value="Laki - Laki">Laki - Laki</option>
                                            <option value="Perempuan">Perempuan</option>
                                        </select>
                                    </div>
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                        <input type="text" class="form-control form-control-user" id="exampleFirstName" placeholder="Foto" style="text-transform: ; color: red; font-style: italic;" name="user_foto" value="<?php echo $d['user_foto']; ?>">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <div class="col-sm-12 mb-3 mb-sm-0">
                                        <center><input type="file" name="user_foto" value="<?php echo $d['user_foto']; ?>"></center>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <div class="col-sm-12 mb-3 mb-sm-0">
                                        <center><img src="Uploads/<?php echo $d['user_foto'] ?>" width="80" style="border-radius: 5px;"></center>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <div class="col-sm-12 mb-3 mb-sm-0">
                                        <input type="submit" name="edit" value="Update" class="btn btn-primary" onclick="return confirm('Apakah data yang anda input sudah benar?')">
                                    </div>
                                </div>
                                </form>
                                    
                                            <?php }} ?>
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

        <!-- Modal View Detail -->    
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
    <script src="vendor/datatables/jquery.dataTables.min.js"></script>
    <script src="vendor/datatables/dataTables.bootstrap4.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="js/demo/datatables-demo.js"></script>

</body>

</html>