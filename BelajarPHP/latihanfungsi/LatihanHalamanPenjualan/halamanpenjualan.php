<?php
    include "prosesinput.php";
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
    <title>Form Penjualan</title>
    <style>
      

    </style>
</head>
<body>
    <?php
        if(isset($_POST['prosesPembelian'])) {
            $jumlahBarang = $_POST['jmlBarang'];

            $totalHarga = totalHarga($jumlahBarang);
            $totalDiskon = totalDiskon($totalHarga, $jumlahBarang);
            $totalBayar = totalBayar($totalHarga, $totalDiskon);
        }
    ?>

    <h2>Halaman Penjualan</h2>

        <form name="formPenjualan" action="" method="post">
            <!-- Jumlah Barang -->
            <label for="pembelian">Jumlah Beli Barang</label>
            <input type="number" min="0" name="jmlBarang" id="jmlBarang">
            <br><br>
            <!-- Button Beli -->
            <button width="150" class="btn btn-warning" type="submit" name="prosesPembelian">Beli Sekarang</button>
        </form>
        <br><br>

        <!-- Perhitungan Harga -->
            <p>Total Harga:
                <?php
                if(isset($totalHarga)) {
                    echo "Rp ".number_format($totalHarga,2,',','.');
                }
                ?>
            </p>

            <p>Total Diskon:
                <?php
                if(isset($totalDiskon)) {
                    echo "Rp ".number_format($totalDiskon,2,',','.');
                }
                ?>
            </p>

            <small id="word" class="form-text text-muted">Harga barang setelah kena diskon.</small>

            <p>Total Bayar:
                <?php
                if(isset($totalBayar)) {
                    echo "Rp ".number_format($totalBayar,2,',','.');
                }
                ?>
            </p>
</body>
</html>