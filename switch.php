<?php
    $day = date("D");

    // switch($day){
    //     case "Mon":
    //         echo "Senin";
    //         break;
    //     case "Tue":
    //         echo "Selasa";
    //         break;
    //     case "Wed":
    //         echo "Rabu";
    //         break;   
    //     case "Thu":
    //         echo "Kamis";
    //         break;   
    //     case "Fri":
    //         echo "Jumat";
    //         break; 
    //     case "Sat":
    //         echo "Sabtu";
    //         break;
    //     default:
    //         echo "Minggu";
    //         break;
    // }

    // Cara lain
    switch($day){
        case "Sun":
            $hari = "Minggu";
            break;
        case "Mon":
            $hari = "Senin";
            break;
        case "Tue":
            $hari = "Selasa";
            break;
        case "Wed":
            $hari = "Rabu";
                break;   
        case "Thu":
            $hari = "Kamis";
                break;   
        case "Fri":
            $hari = "Jumat";
                break; 
        case "Sat":
            $hari = "Sabtu";
                break;      
     }    
     echo $hari; 
?>