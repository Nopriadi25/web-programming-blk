<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Latihan LOOPING FOR dengan PHP</title>
	<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
    <!-- Input tahun pada FOR dan list option tag -->
    <select name="" id="" class="name">
    <?php
         for($i=1990; $i <= 2021; $i++){
            echo "<option value=$i > $i</option>";
            if($i == 1997) {
                echo "<option value=$i selected>1997</option>";
            }
        }
    ?>
    </select>
        
</body>
</html>