<!DOCTYPE html>
<html>
<head>
    <title>Fungsi Menghitung Nilai</title>
        <link rel="stylesheet" href="css.css">     
</head>
<body>
 <!-- Main konten -->
    <div class="main" id="menu">
        <div class="container">
            <h1>Hitung Nilai Risma</h1>
                <form action="latihan7b.php" method="POST">
                    <label>Nilai UTS</label><br>
                    <input type="number" name="uts" required min="0" max="10"><br> 
                    <label>Nilai UAS</label><br>
                    <input type="number" name="uas" required min="0" max="10"><br> 
                    <label>Nilai Tugas</label><br>
                    <input type="number" name="tugas" required min="0" max="10"><br> 
                    <button>Hitung</button>
                </form>
        </div> 
    </div>   

<!-- footer -->
    <footer> Copyright © 2021 by Vee</footer>

</body>
</html>