<!DOCTYPE html>
<html>
<head>
	<title>hasil hitung</title>
	 <link rel="stylesheet" href="css.css">     
</head>
<body>
	 <!-- main konten/gambar -->
        <div class="main" id="menu">
            <div class="container">
          <h1>Hasil</h1>
            <form action="latihan7B1.php" method="POST">
                <label>Total Nilai</label>
<?php 
$uts = $_POST['uts'];
$uas = $_POST['uas'];
$tugas = $_POST['tugas'];
$nilai_uts = $uts*0.35;
$nilai_uas = $uas*0.5;
$nilai_tugas = $tugas*0.15;
$nilai_total = $uts*0.35 + $uas*0.5 + $tugas*0.15;

echo "Nilai UTS = $uts</p><br/>";
echo "Nilai UAS = $uas<br/>";
echo "Nilai Tugas =  $tugas<br/><br/>";

echo "Nilai UTS = $nilai_uts<br/>";
echo "Nilai UAS = $nilai_uas<br/>";
echo "Nilai Tugas =  $nilai_tugas<br/><br/>";

echo "Nilai Total Risma Adalah  $nilai_total";
	
 ?>

<button>Kembali</button>
            </form>
        </div>   
        </div>

</body>
</html>
© 20