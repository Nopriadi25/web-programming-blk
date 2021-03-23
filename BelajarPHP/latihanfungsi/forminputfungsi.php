<?php
    require_once "latihanfungsi.php";
?>
<!DOCTYPE html>
<html lang="en">
<head> 
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Form Input Fungsi PHP</title>
</head>
<body>
    <!-- FORM INPUT LUAS SEGITIGA -->
    <form name="formSegitiga" action="" method="POST">
    <h2>LUAS SEGITIGA</h2>
        <input type="number" name="alas" required min=0 placeholder="Masukkan nilai alas">
        <input type="number" name="tinggi" required min=0 placeholder="Masukkan nilai tinggi">
        <input type="submit" name="hitungLuasSegitigaBtn" value="Hitung Luas">
        <br>
        <br>
        <?php
            if(isset($_POST['hitungLuasSegitigaBtn'])) {
                echo "Luas Segitiga dengan alas ".$_POST['alas']." dan tinggi ".$_POST['tinggi']." adalah: ".luas_segitiga($_POST['alas'], $_POST['tinggi']);
            }
        ?> 
    </form>
        <br><br>
        
        <!-- FORM INPUT KELILING SEGITIGA -->
    <form name="formSegitiga" action="" method="POST">
        <h2>KELILING SEGITIGA</h2>
            <input type="number" name="a" required min=0 placeholder="Masukkan nilai A">
            <input type="number" name="b" required min=0 placeholder="Masukkan nilai B">
            <input type="number" name="c" required min=0 placeholder="Masukkan nilai C">
            <input type="submit" name="hitungKelilingSegitigaBtn" value="Hitung Keliling">
            <br>
            <br>  
            <?php  
                if(isset($_POST['hitungKelilingSegitigaBtn'])) {
                    echo "Keliling Segitiga dengan sisi A ".$_POST['a']." sisi B ". $_POST['b']." dan sisi C ".$_POST['c']." adalah: ".keliling_segitiga($_POST['a'], $_POST['b'], $_POST['c']);
                }
            // ?>
    </form>
        <br><br>


        <!-- FORM INPUT LUAS DAN KELILING LINGKARAN -->
        <button onclick="showFormLingkaran()" style="">Show Form Lingkaran</button>
    <form name="formLingkaran" action="" method="POST">
        <h2>LUAS & KELILING LINGKARAN</h2>
            <input type="number" name="r" required min=0 placeholder="Masukkan nilai r">
            <input type="submit" name="hitungLuasLingkaranBtn" value="Hitung Luas">
            <input type="submit" name="hitungLuasLingkaranBtn" value="Hitung Keliling">
            <button type="reset" onclick="resetNilai()">Reset</button>
            <br>
            <br>
            <?php
                if(isset($_POST['hitungLuasLingkaranBtn'])) {
                    echo "<div id='pesanLingkaran'>Luas Lingkaran dengan jari-jari ".$_POST['r']." adalah: ".luas_lingkaran($_POST['r']);
                } echo "<br>";
                if(isset($_POST['hitungLuasLingkaranBtn'])) {
                    echo "Keliling Lingkaran dengan jari-jari ".$_POST['r']." adalah: ".keliling_lingkaran($_POST['r']);
                }
            ?>
            <!-- Hide dan Show Tombol Fungsi dengan JS -->
            <script>
                function showFormLingkaran() {
                    const display = document.getElementById('formLingkaran').style.display
                    if(display == 'none') {
                        display = 'block';
                    }else {
                        FormLingkaran.style.display = 'none'
                    }
                }

                function resetNilai() {
                    document.getElementById('pesanLingkaran').innerHTML = ''
                }
            </script>
    </form>
        <br><br>


        <!-- FORM INPUT LUAS JAJAR GENJANG -->
        <form name="formJajarGenjang" action="" method="POST">
            <h2>LUAS JAJAR GENJANG</h2>
                <input type="number" name="alas" required min=0 placeholder="Masukkan nilai alas">
                <input type="number" name="tinggi" required min=0 placeholder="Masukkan nilai tinggi">
                <input type="submit" name="hitungLuasJajarGenjangBtn" value="Hitung Luas">
                <br>
                <br>
                <?php
                    if(isset($_POST['hitungLuasJajarGenjangBtn'])) {
                        echo "Luas Jajar Genjang dengan alas ".$_POST['alas']." dan tinggi ".$_POST['tinggi']." adalah: ".luas_jajargenjang($_POST['alas'], $_POST['tinggi']);
                    }
                ?> 
        </form>
            <br><br>
        
        <!-- FORM INPUT KELILING JAJAR GENJANG -->
        <form name="formSegitiga" action="" method="POST">
            <h2>KELILING JAJAR GENJANG</h2>
                <input type="number" name="a" required min=0 placeholder="Masukkan nilai A">
                <input type="number" name="b" required min=0 placeholder="Masukkan nilai B">
                <input type="submit" name="hitungKelilingJajarGenjangBtn" value="Hitung Keliling">
                <br>
                <br>  
            <?php  
                if(isset($_POST['hitungKelilingJajarGenjangBtn'])) {
                    echo "Keliling Jajar Genjang dengan sisi A ".$_POST['a']." dan sisi B ".$_POST['b']." adalah: ".keliling_jajargenjang($_POST['a'], $_POST['b']);
                }
            ?>
       </form>
            <br><br>
            
</body>
</html>
