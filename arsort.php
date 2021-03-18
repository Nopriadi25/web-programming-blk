<?php
// Memasukkan nilai ke dalam Array
$mobil = array("Zulka" => "Volvo", "Ali" => "BMW", "Ajuab" => "Toyota");

// Nilai pada Array diurutkan secara Descending
arsort($mobil);

// Dengan looping menampilkan tiap nilai dari array
foreach($mobil as $x => $nilai_x){
    echo "Kunci = ".$x.", Nilainya =".$nilai_x;
    echo "</br>";
}
?>