<?php
    // Input
    $buku = 25;
    $harga = 12500;
    $diskon = 5/100;
    
    $total_harga = $buku * $harga;

    $totaldiskon = $total_harga * $diskon;

    $hasil = $total_harga - $totaldiskon;

    // Proses
    if($buku >= 20){
         echo "Total uang yang harus dibayarkan oleh Irwan adalah Rp ".$hasil;
    } else {
        echo "Tidak dapat diskon";
    }

?>