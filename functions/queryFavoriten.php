<?php

include_once 'connectDB.php';


$servername = "localhost";
$username = "client";
$password = "clientCasinoBasel";
$DBname="techniker";


// Create connection

  $connQueryFavoriten = connectDB($servername,$username,$password,$DBname);

$sqlLoopFavoriten="SELECT * FROM `event_favoriten`";

$queryFavoritenArray = $connQueryFavoriten->query($sqlLoopFavoriten);


function echoFavoriteFilter($var1){

  $con=mysqli_connect("localhost","client","clientCasinoBasel","techniker");
  // Check connection
  if (mysqli_connect_errno())
    {
    echo "Failed to connect to MySQL: " . mysqli_connect_error();
    }

  $sql="SELECT * FROM `event_favoriten`";

  if ($result=mysqli_query($con,$sql))
    {
      if($var1==1){
        while ($row=mysqli_fetch_assoc($result))
          {
              echo '<option value="'.$row["Stoerungen"].'" idBind="'.$row["problemloesung_primaer"].'" idBindA="'.$row["problemloesung_sekundaer"].'" >';


          }
      }elseif ($var1==2) {

        while ($row=mysqli_fetch_assoc($result))

          {
            if($row["problemloesung_sekundaer"]==0){
              $row["problemloesung_sekundaer"]=" ";
              echo '<option value="'.$row["problemloesung_primaer"].'" idBind2="stoerungA'.$row["id"].'">';
            }else{
                echo '<option value="'.$row["problemloesung_primaer"].'" idBind3="stoerungA'.$row["id"].'">';
            }


          }

      }elseif ($var1==3) {
        while ($row=mysqli_fetch_assoc($result))
          {
            if($row["problemloesung_sekundaer"]==0){
            //  $row["problemloesung_sekundaer"]=" ";
            //  echo '<option value="'.$row["problemloesung_sekundaer"].'" id="stoerungB'.$row["id"].'">';
            }else{
                echo '<option value="'.$row["problemloesung_sekundaer"].'" id="stoerungB'.$row["id"].'">';
            }

          }
      }


    // Free result set
    mysqli_free_result($result);
  }

  mysqli_close($con);

}









 ?>
