<?php
include 'koneksi.php';

// Fungsi untuk mengelompokkan data berdasarkan bulan dan tahun
function groupDataByMonthYear($data) {
    $groupedResult = [];
    foreach ($data as $item) {
        $groupedResult[$item['bulan_tahun']][] = $item;
    }
    return $groupedResult;
}

// Mendapatkan data dari database
$data = mysqli_query($koneksi, "SELECT * FROM ajp_pkespb order by analysis_timepkespb DESC");
$groupedData = [];

while ($d = mysqli_fetch_array($data)) {
    $analysisTime = date('M Y ', strtotime($d['analysis_timepkespb']));
    $d['bulan_tahun'] = $analysisTime;
    $groupedData[] = $d;
}

// Mengelompokkan data berdasarkan bulan_tahun
$groupedResult = groupDataByMonthYear($groupedData);

// Mendapatkan tanggal awal dan akhir dari form
$dateStart = isset($_POST['date_start']) ? $_POST['date_start'] : '';
$dateEnd = isset($_POST['date_end']) ? $_POST['date_end'] : '';

// Filter data berdasarkan rentang tanggal
$filteredData = [];
foreach ($groupedData as $item) {
    $itemDate = date('Y-m-d', strtotime($item['analysis_timepkespb']));
    if ($itemDate >= $dateStart && $itemDate <= $dateEnd) {
        $filteredData[] = $item;
    }
}
$filteredGroupedResult = groupDataByMonthYear($filteredData);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Data Grouping by Month and Year</title>
</head>
<body>

    <h2>Data Grouping</h2>

    <!-- Form untuk memilih rentang tanggal -->
    <form method="post">
        <label for="date_start">Tanggal Awal:</label>
        <input type="date" name="date_start" id="date_start" required>
        <label for="date_end">Tanggal Akhir:</label>
        <input type="date" name="date_end" id="date_end" required>
        <button type="submit">Tampilkan</button>
    </form>

   <!-- Tampilkan data yang telah dielompokkan berdasarkan bulan dan tahun -->
<?php foreach ($filteredGroupedResult as $bulanTahun => $group): ?>
    <h3><?php echo $bulanTahun; ?></h3>
    <table border="1">
        <thead>
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
                <th>ASH</th>
                <th>Fiber</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($group as $index => $item):?>
                
                <tr>
                    <td><?php echo $index + 1; ?></td>
                    <td><?php echo $item['created_atpkespb']; ?></td>
                    <td><?php echo $item['analysis_timepkespb']; ?></td>
                    <td><?php echo $item['product_namepkespb']; ?></td>
                    <td><?php echo $item['product_codepkespb']; ?></td>
                    <td><?php echo $item['sample_typepkespb']; ?></td>
                    <td><?php echo $item['sample_numberpkespb']; ?></td>
                    <td><?php echo $item['sample_commentpkespb']; ?></td>
                    <td><?php echo $item['instrument_namepkespb']; ?></td>
                    <td><?php echo $item['instrument_serial_numberpkespb']; ?></td>
                    <td><?php echo $item['olwbpkespb']; ?></td>
                    <td><?php echo $item['vmpkespb']; ?></td>
                    <td class='$olwbClass'><?php echo $item['oldbpkespb']; ?></td>
                    <td><?php echo $item['ashpkespb']; ?></td>
                    <td><?php echo $item['fiberpkespb']; ?></td>                    
                </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
<?php endforeach; ?>

</body>
</html>
