<?php
include 'koneksi.php';
// menyimpan data id kedalam variabel
$del_id  = $_GET['ID'];
// query SQL untuk insert data
$query="DELETE from TAHUN_AKADEMIK where ID_AKADEMIK='$del_id'";
mysqli_query($connection, $query);
// mengalihkan ke halaman index.php
header("location:index.php");
?>