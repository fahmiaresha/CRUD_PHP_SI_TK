<?php
include 'KONEKSI.php';
Include 'FORM_EDIT.php';
// menyimpan data kedalam variabel
$get_id=$_POST['IDlama'];	
$ID_AKADEMIK  = $_POST['ID_AKADEMIK'];
$TAHUN_AKADEMIK = $_POST['TAHUN_AKADEMIK'];
$TANGGAL_WAJIB_BAYAR = $_POST['TANGGAL_WAJIB_BAYAR'];
$BULAN       = $_POST['BULAN'];
$SEMESTER  = $_POST['SEMESTER'];

// query SQL untuk insert data
$query="UPDATE tahun_akademik SET ID_AKADEMIK='$ID_AKADEMIK',TAHUN_AKADEMIK='$TAHUN_AKADEMIK',TANGGAL_WAJIB_BAYAR='$TANGGAL_WAJIB_BAYAR',BULAN='$BULAN',SEMESTER='$SEMESTER' where ID_AKADEMIK='$get_id'";
mysqli_query($connection, $query);
// mengalihkan ke halaman index.php
header("location:INDEX.php");
?>