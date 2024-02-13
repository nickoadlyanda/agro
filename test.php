<div class="row">

    <!-- Area Chart - First Press -->
    <div class="col-xl-6 col-lg-7">
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
    <div class="col-xl-6 col-lg-7">
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

    <!-- Summary Table -->
    <div class="col-xl-12">
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
                    echo "<table border='1'>
                            <tr>
                                <th>Bulan</th>
                                <th>Total Data First Press</th>
                                <th>Total Data < 14 First Press</th>
                                <th>Total Data Second Press</th>
                                <th>Total Data < 8 Second Press</th>
                                <th>Total Data Combined</th>
                                <th>Total Data Combined < 14 + < 8</th>
                                <th>% Combined < 14 + < 8</th>
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
    </div>

</div>
