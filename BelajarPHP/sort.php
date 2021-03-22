<?php
    // Memasukkan nilai ke dalam array
    $mobil = array("Volvo", "BMW", "Toyota");

    // Array diurutkan secara Ascending
    sort($mobil);

    // Array durutkan secara Descending
    rsort($mobil);
    
    // Mendapatkan jumlah nilai dari array $mobil
    $length = count($mobil);

    // Dengan looping menampilkan tiap nilai dari array
    for($x = 0; $x < $length; $x++) {
        echo $mobil[$x];
        echo "</br>";
    }



?>