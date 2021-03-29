<?php
include 'KONEKSI.php';
// menyimpan data kedalam variabel
$ID_AKADEMIK         = $_POST['ID_AKADEMIK'];
$TAHUN_AKADEMIK      = $_POST['TAHUN_AKADEMIK'];
$TANGGAL_WAJIB_BAYAR = $_POST['TANGGAL_WAJIB_BAYAR'];
$BULAN               = $_POST['BULAN'];
$SEMESTER            = $_POST['SEMESTER'];
// query SQL untuk insert data
$query="INSERT INTO TAHUN_AKADEMIK SET ID_AKADEMIK='$ID_AKADEMIK',TAHUN_AKADEMIK='$TAHUN_AKADEMIK',TANGGAL_WAJIB_BAYAR='$TANGGAL_WAJIB_BAYAR',BULAN='$BULAN',SEMESTER='$SEMESTER'";
mysqli_query($connection, $query);
// mengalihkan ke halaman index.php
header("location:index.php");
?>