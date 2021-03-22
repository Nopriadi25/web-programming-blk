<?php
    // RUMUS FUNGSI LUAS
    // Menghitung Rumus Luas Segitiga
    function luas_segitiga($alas, $tinggi) {
        $luas = 1/2 * $alas * $tinggi;
        return $luas;
    }

    echo "Luas segitiga dengan alas 7 dan tinggi 15 = ".luas_segitiga(7, 15);
    echo "<br>";

    // Menghitung Rumus Luas Lingkaran
    function luas_lingkaran($r) {
        $luas = 3.14 * $r * $r;
        return $luas;
    }

    echo "Luas lingkaran dengan jari-jari 20 = ".luas_lingkaran(20);
    echo "<br>";

    
    // Menghitung Rumus Jajaran Genjang
    function luas_jajargenjang($alas, $tinggi) {
        $luas = $alas * $tinggi;
        return $luas;
    }

    echo "Luas jajaran genjang dengan alas 7 dan tinggi 20 = ".luas_jajargenjang(7, 20);
    echo "<br>";


    // RUMUS FUNGSI KELILING
    // Menghitung Rumus Keliling Segitiga
    function keliling_segitiga($a, $b, $c) {
        $keliling = $a + $b + $c;
        return $keliling;
    }

    echo "Jumlah keliling segitiga dengan a=5, b=8, dan c=7 = ".keliling_segitiga(5, 8, 7);
    echo "<br>";

    // Menghitung Rumus Keliling Lingkaran
    function keliling_lingkaran($r) {
        $keliling = 3.14 * 2 * $r;
        return $keliling;
    }

    echo "Jumlah keliling lingkaran dengan jari-jari 20 = ".keliling_lingkaran(20);
    echo "<br>";

    // Menghitung Rumus Keliling Jajaran Genjang
    function keliling_jajargenjang($a, $b) {
        $keliling = 2 * $a + $b;
        return $keliling;
    }

    echo "Jumlah keliling jajaran genjang dengan a=5 dan b=8  = ".keliling_jajargenjang(5, 8);
    echo "<br>";


?>
