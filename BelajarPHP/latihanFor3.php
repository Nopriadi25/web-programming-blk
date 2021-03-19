<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">

    <title>Input Tombol Submit Bintang PHP</title>
  </head>
  <body>
    <form method="post" action="">
  
        <div class="sm-2">
            <label for="exampleInputEmail1" class="form-label">Input Number</label>
            <input type="text" name="bintang" class="form-control">
        </div>

        <button type="submit" value="Submit" name="submit" class="btn btn-primary">Submit</button>
        <button type="reset" name="reset" value="reset" class="btn">Reset</button>

    </form>

    <!-- PHP -->
    <?php
    // Membuat Piramid Bintang dari 1 ke 5
    if(isset($_POST['submit'])) {
        $bintang= $_POST['bintang'];
        
            $i = 1;
            while($i <= $bintang) {
        
            $a = 1;
            while($a <= $i) {
                echo "*";
                $a++;
            } 
            echo "<p>";
            $i++;
        } 
    }
    echo "<hr>";
    ?>  
    
  </body>
</html>