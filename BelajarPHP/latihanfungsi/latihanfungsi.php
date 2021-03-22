<?php
    // RUMUS FUNGSI LUAS
    // Menghitung Rumus Luas Segitiga
    function luas_segitiga($alas, $tinggi) {
        $luas = 1/2 * $alas * $tinggi;
        return $luas;
    }

    // Menghitung Rumus Luas Lingkaran
    function luas_lingkaran($r) {
        $luas = 3.14 * $r * $r;
        return $luas;
    }
    
    // Menghitung Rumus Jajaran Genjang
    function luas_jajargenjang($alas, $tinggi) {
        $luas = $alas * $tinggi;
        return $luas;
    }

    // RUMUS FUNGSI KELILING
    // Menghitung Rumus Keliling Segitiga
    function keliling_segitiga($SisiA, $SisiB, $SisiC) {
        $keliling = $SisiA +  $SisiB + $SisiC;
        return $keliling;
    }

    // Menghitung Rumus Keliling Lingkaran
    function keliling_lingkaran($r) {
        $keliling = 3.14 * 2 * $r;
        return $keliling;
    }

    // Menghitung Rumus Keliling Jajaran Genjang
    function keliling_jajargenjang($SisiA, $SisiB) {
        $keliling = 2 * $SisiA + $SisiB;
        return $keliling;
    }
?>
