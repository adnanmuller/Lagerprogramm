

<?php


function queryEintraege($var1){

  $con=mysqli_connect("localhost","client","clientCasinoBasel","techniker");
  // Check connection
  if (mysqli_connect_errno())
    {
    echo "Failed to connect to MySQL: " . mysqli_connect_error();
    }

  $sql="SELECT * FROM `logfile` ORDER BY Datum DESC,Zeit DESC";

  if ($result=mysqli_query($con,$sql))
    {

        while ($row=mysqli_fetch_assoc($result))
          {
            //  echo '<option value="'.$row["Stoerungen"].'" idBind="'.$row["problemloesung_primaer"].'" idBindA="'.$row["problemloesung_sekundaer"].'" >';
              echo '<tr><td>'.$row["Datum"].'</td><td>'.$row["Zeit"].'</td><td>'.$row["Position"].'</td><td>'.$row["Inventory"].'</td><td>'.$row["Techniker"].'</td><td>'.$row["Problembeschreibung"].'</td><td>'.$row["Problemloesung_primaer"].'</td><td>'.$row["Problemloesung_sekundaer"].'</td><td><input type="checkbox"></td></tr>';
          }
          }



    // Free result set
    mysqli_free_result($result);


  mysqli_close($con);

}



?>
