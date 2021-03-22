<?php
 // Menghitung Rumus Luas Lingkaran
    function luas_lingkaran($r) {
        $luas = 3.14 * $r * $r;
        return $luas;
    }

    echo "Luas lingkaran dengan jari-jari 20 = ".luas_lingkaran(20);
    echo "<br>";

  // Menghitung Rumus Keliling Lingkaran
      function keliling_lingkaran($r) {
          $keliling = 3.14 * 2 * $r;
          return $keliling;
      }

      echo "Jumlah keliling lingkaran dengan jari-jari 20 = ".keliling_lingkaran(20);
      echo "<br>";
?>
