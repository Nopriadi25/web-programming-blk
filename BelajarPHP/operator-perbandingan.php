<!-- BELAJAR IF CONDITIONAL -->
<?php
    $a = "5";
    $b = 5;

    echo "Variabel a :  $a </br>";
    echo "Variabel b :  $b </br>";

    // IF equal
    if($a == $b){
        echo "Variabel a equal dengan variabel b";
    } else {
        echo "Variabel a tidak equal dengan variabel b";
    }

    echo "</br>";

    // IF Identical
    if($a === $b){
        echo "Variabel a identical dengan variabel b";
    } else {
        echo "Variabel a tidak identical dengan variabel b";
    }
?>
