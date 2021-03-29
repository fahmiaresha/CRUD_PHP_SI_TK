<title>WEBSITE FAHMI ARESHA</title>
<?php

$servername = "localhost";
$username = "root";

$password = "";
$database = "revisi_si_tk";


// untuk tulisan bercetak tebal silakan sesuaikan dengan detail database Anda
// membuat koneksi
$connection = mysqli_connect($servername, $username, $password, $database);
// mengecek koneksi
if (!$connection) {
    die("Koneksi gagal: " . mysqli_connect_error());
}
echo "Tabel Master Tahun Akademik ";
echo " ";

$query2= "SELECT *  FROM TAHUN_AKADEMIK";
$query= mysqli_query($connection,$query2); 

echo '<table border="1" cellpading="0" cellspacing="0">
		<thead>
			<tr>
				<th>ID_AKADEMIK </th>
				<th>TAHUN_AKADEMIK </th>
				<th>TANGGAL_WAJIB_BAYAR </th>
				<th>BULAN </th>
				<th>SEMESTER </th>
			</tr>
		</thead>
		<tbody>';
		
while ($row = mysqli_fetch_array($query))
{
	echo '<tr>
			<td>'.$row['ID_AKADEMIK'].'</td>
			<td>'.$row['TAHUN_AKADEMIK'].'</td>
			<td>'.$row['TANGGAL_WAJIB_BAYAR'].'</td>
			<td>'.$row['BULAN'].'</td>
			<td>'.$row['SEMESTER'].'</td>
		</tr>';
}
echo '
	</tbody>
</table>';


mysqli_close($connection);

?>