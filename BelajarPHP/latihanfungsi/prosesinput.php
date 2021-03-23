<?php
// Proses untuk ke Halaman Login
function login($name, $password) {
    if($name == "admin" && $password == "test1") {
        header("location:halamanpenjualan.php");
    } else {
    echo "<script>
            alert('Sorry, your username or password is wrong!');
        </script>";
    }
}

    // Proses dalam Halaman Penjualan
    $harga = 9000;
    $diskon = 0.05;

    // Fungsi Total Harga
    function totalHarga($jumlahBarang) {
        global $harga;
        
        $jumlahTotalHarga = $harga * $jumlahBarang;

        return $jumlahTotalHarga;
    }
    
    // Fungsi Total Diskon
    function totalDiskon($totalHarga, $jumlahBarang) {
        global $diskon;
        
        if($jumlahBarang >= 36) {
            $jumlahTotalDiskon = $totalHarga * $diskon;
        } else {
            $jumlahTotalDiskon = $totalHarga * 0;
        }
        return $jumlahTotalDiskon;
    }

    // Fungsi Total Bayar
    function totalBayar($totalHarga, $totalDiskon) {
        
        $totalBayar = $totalHarga - $totalDiskon;

        return $totalBayar;
    }

?>
