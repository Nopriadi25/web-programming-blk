<?php
    // Menghitung Rumus Luas Segitiga
    function luas_segitiga($alas, $tinggi) {
        $luas = 1/2 * $alas * $tinggi;
        return $luas;
    }

    echo "Luas segitiga dengan alas 7 dan tinggi 15 = ".luas_segitiga(7, 15);
    echo "<br>";

  // Menghitung Rumus Keliling Segitiga
      function keliling_segitiga($a, $b, $c) {
          $keliling = $a + $b + $c;
          return $keliling;
      }

      echo "Jumlah keliling segitiga dengan a=5, b=8, c=7 = ".keliling_segitiga(5, 8, 7);
      echo "<br>";
?>
