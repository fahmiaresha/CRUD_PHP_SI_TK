<!DOCTYPE html>
<html>
    <head>
        <title>WEBSITE M.FAHMI ARESHA</title>
        <link rel="stylesheet"  href="layoutweb.css" />
    </head>
    <body>
     <h2 align="center">FORM INSERT DATA</h2>
        <form method="post" action="SIMPAN.php">
            <table align="center" >
				
                  <td>Tahun Akademik</td><td><input wid  type="text" name="TAHUN_AKADEMIK" required></td></tr>
				 <tr>
				   <td>Tanggal Wajib Bayar</td><td><input  type="date" name="TANGGAL_WAJIB_BAYAR" required></td></tr>
				<tr>
				  <td>Bulan </td><td>
                  <div align="left">
                    <select name="BULAN" required >
                            <option value="1">1</option>
                            <option value="2">2</option>
                             <option value="3">3</option>
                            <option value="4">4</option>
							 <option value="5">5</option>
                            <option value="6">6</option>
                             <option value="7">7</option>
                            <option value="8">8</option>
							 <option value="9">9</option>
                            <option value="10">10</option>
                             <option value="11">11</option>
                            <option value="12">12</option>
                        </select>
                    </td></tr>
					
				<tr>
				  <td><p>Semester</p></td>
				  <td>
                        <p align="left">
                          <input type="radio" name="SEMESTER" value="G" required>
                          Ganjil
                        <input type="radio" name="SEMESTER" value="GE" required >Genap
              </p></td></tr>
                    
         
  
          <td colspan="2"> <button type="reset"><a href="index.php">KEMBALI</a></button> <button  type="submit" value="simpan"> SIMPAN</button> </td>
            </table>
           
           
          
        </form>
    </body>
</html>