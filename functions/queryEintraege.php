

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
              echo '<tr onclick="createAlertBox(this)" class="" ><td>'.$row["Datum"].'</td><td>'.$row["Zeit"].'</td><td>'.$row["Position"].'</td><td>'.$row["Inventory"].'</td><td>'.$row["Techniker"].'</td><td class="overflow-hidden">'.$row["Problembeschreibung"].'</td><td>'.$row["Problemloesung_primaer"].'</td><td>'.$row["Problemloesung_sekundaer"].
              '</td><td><input type="checkbox" class="selectInput" name="'.$row["Event_ID"].'" id="'.$row["Event_ID"].'" value="'.$row["Event_ID"].'"></td></tr>';
          }
          }



    // Free result set
    mysqli_free_result($result);


  mysqli_close($con);

}



?>
