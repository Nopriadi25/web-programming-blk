<?php
  // Menghitung Rumus Jajaran Genjang
      function luas_jajargenjang($alas, $tinggi) {
          $luas = $alas * $tinggi;
          return $luas;
      }

      echo "Luas jajaran genjang dengan alas 7 dan tinggi 20 = ".luas_jajargenjang(7, 20);
      echo "<br>";

  // Menghitung Rumus Keliling Jajaran Genjang
      function keliling_jajargenjang($a, $b) {
          $keliling = 2 * $a + $b;
          return $keliling;
      }

      echo "Jumlah keliling jajaran genjang dengan a=5 dan b=8  = ".keliling_jajargenjang(5, 8);
      echo "<br>";
?>
