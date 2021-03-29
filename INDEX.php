<!DOCTYPE html>
<html>
    <head>
        <title>WEBSITE M.FAHMI ARESHA</title>
        <link rel="stylesheet"  href="layoutweb.css" />
    </head>
    <body>
   
        <h2 align="center">TAHUN AKADEMIK</h2>
         <form action="INDEX.php" method="get">
	       <p>
	         <label>Cari Data :</label>
	         <input type="text" name="cari">
	         <input type="submit" value="Cari">
           </p>
	      
          </form>
          <?php 
		  include 'KONEKSI.php';
         if(isset($_GET['cari'])){
		$cari = $_GET['cari'];
		echo "<b>Hasil pencarian : ".$cari."</b>";
		}
		?>
        
        <table align="center" >
            <tr>
			<th>No</th>
			<th>ID Akademik</th>
			<th>Tahun Akademik</th>
			<th>Tanggal Wajib Bayar</th>
			<th>Bulan</th>
			<th>Semester</th>
			<th>Action</th>
			</tr>
            <?php
            
			if(isset($_GET['cari'])){
		$cari = $_GET['cari'];
		$tahun_akademik = mysqli_query($connection,"select * from TAHUN_AKADEMIK where TAHUN_AKADEMIK like '%".$cari."%'");	
			}
			else{
            $tahun_akademik = mysqli_query($connection, "SELECT * from TAHUN_AKADEMIK ");
			
			}
            $no = 1;	
            foreach ($tahun_akademik as $row) {
				$SEMESTER = $row['SEMESTER'] == 'G' ? 'Ganjil' : 'Genap';
                echo "<tr>
          <td>$no</td>
            <td>" . $row['ID_AKADEMIK'] . "</td>
            <td>" . $row['TAHUN_AKADEMIK'] . "</td>
			<td>" . $row['TANGGAL_WAJIB_BAYAR'] . "</td>
			<td>" . $row['BULAN'] . "</td>
			<td>" . $SEMESTER . "</td>
            <td><a href='FORM_EDIT.php?ID=$row[ID_AKADEMIK]'>Edit</a>
                <a href='DELETE.php?ID=$row[ID_AKADEMIK]'>Delete</a>
            </td>
              </tr>";
                $no++;
            }
		
            ?>
        </table>
   
    
    <p>&nbsp;</p>
    <a href='FORM_INPUT.php'><tr><td colspan="2"><button class="tombol" type="submit" value="simpan">
      <div >TAMBAH DATA</div>
    </button></td></tr></a>	
</body>
</html>