<!-- Create Stars Pattern Looping FOR -->

<?php
// Membuat Piramid Bintang dari 1 ke 5
  for($i = 1; $i <= 5; $i++){
  echo  str_repeat('*', $i),
  "</br>";
}

  echo "<hr>";

// Membuat Piramid Bintang dari 5 ke 1 (Kebalikkannya)  
for($i = 5; $i >= 1; $i--){
    echo  str_repeat('*', $i),
    "</br>";
}

    echo "<hr>";
    
// Membuat Piramid angka 1122334455
for($i = 0; $i <= 5; $i++){  
    for($j = 1; $j <= $i; $j++){  
    echo $i;  
    }  
    echo "<br>";  
}   
    
    echo "<hr>";

// Contoh Piramid 12345
$k = 1;  

for($i = 0; $i < 4; $i++){  
for($j = 0; $j <= $i; $j++){  
    echo $k." ";  
    $k++;  
    }  

    echo "<br>";  
}   echo "<hr>";

// Membuat Piramid angka dengan sisipkan 3x3
for($i = 1; $i <= 5; $i++){  
    for($j = $i; $j >=1; $j--){  
       
      $a = $i;
      $b = $j; 
        if($a == 3 && $b == 2){
            echo "X";
            $j--;
       }  
       echo $i;
     } 
     echo "</br>";
 } echo "</hr>";

?>