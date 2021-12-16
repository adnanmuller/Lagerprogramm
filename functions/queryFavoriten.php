<?php




$servername = "localhost";
$username = "client";
$password = "clientCasinoBasel";
$DBname="techniker";

// Create connection

  $connQueryFavoriten = new mysqli($servername, $username, $password,$DBname);

$sqlLoopFavoriten="SELECT Störungen FROM `event_favoriten`";

$queryFavoritenArray = $connQueryFavoriten->query($sqlLoopFavoriten);

//print_r($queryFavoritenArray);



function echoFavoriteStörungen($var1){

  if ($var1->num_rows > 0) {
    // output data of each row
    while($row = $var1->fetch_assoc()) {
      echo '<option value="'.$row["Störungen"].'">'.$row["Störungen"].'</option>' ;
    }
  } else {
    echo "0 results";
  }
}





 ?>
