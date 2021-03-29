<?php
include 'KONEKSI.php';
$id         = $_GET['ID'];
$tahun_akademik = mysqli_query($connection, "select * from TAHUN_AKADEMIK where ID_AKADEMIK='$id'");
$row        = mysqli_fetch_array($tahun_akademik);
// membuat data jurusan menjadi dinamis dalam bentuk array
$BULAN   = array('1','2','3','4','5','6','7','8','9','10','11','12');
$SEMESTER   = array('GANJIL','GENAP');
// membuat function untuk set aktif radio button
function active_radio_button($value,$input){
    // apabilan value dari radio sama dengan yang di input
    $result =  $value==$input?'checked':'';
    return $result;
}
?>
<!DOCTYPE html>
<html>
    <head>
        <title>FORM UPDATE</title>
         <link rel="stylesheet"  href="layoutweb.css" />
    </head>
    <body>
    <h2 align="center">FORM EDIT DATA</h2>
        <form method="post" action="edit.php">
            <input type="hidden" value="<?php echo $id;?>" name="IDlama">
            <table align="center" >
                <tr>
              <td>Id Akademik</td><td><input type="text" value="<?php echo $row['ID_AKADEMIK'];?>" name="ID_AKADEMIK" required readonly></td></tr>
                <tr>
              <td>Tahun Akademik</td><td><input type="text" value="<?php echo $row['TAHUN_AKADEMIK'];?>" name="TAHUN_AKADEMIK" required></td></tr>
				<tr>
			  <td>Tanggal Wajib Bayar</td><td><input align="left" type="date" value="<?php echo $row['TANGGAL_WAJIB_BAYAR'];?>" name="TANGGAL_WAJIB_BAYAR" required></td></tr>
				
				 <tr>
				   <td>Bulan</td><td>
                        <div align="left">
                          <select name="BULAN" required>
                            <?php
                            foreach ($BULAN as $j){
                                echo "<option value='$j' ";
                                echo $row['BULAN']==$j?'selected="selected"':'';
                                echo ">$j</option>";
                            }
                            ?>
                          </select>
                        </div>
              </td></tr>
				
                <tr>
                  <td>Semester</td><td>
                        <div align="left">
                          <input type="radio" name="SEMESTER" value="G" required <?php echo active_radio_button("G", $row['SEMESTER'])?>>
                          Ganjil
                        <input type="radio" name="SEMESTER" value="GE" required <?php echo active_radio_button("GE", $row['SEMESTER'])?>>Genap
              </div></td></tr>
			<tr>
             <td colspan="2" id="akhir"><button type="reset"><a href="index.php">KEMBALI</a></button>
             <button id="ts" type="submit" value="simpan">SIMPAN</button>
             </td></tr>
            </table>
             
                       
        </form>
    </body>
</html>