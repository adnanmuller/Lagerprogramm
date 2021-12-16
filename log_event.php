<?php

echo "Datum: ".$_POST["Datum"]."<br>";
echo "Zeit: ".$_POST["time"]."<br>";
echo "Position: ".$_POST["position"]."<br>";
echo "Inventory: ".$_POST["inventory"]."<br>";
echo "techniker: ".$_POST["techniker"]."<br>";
echo "Problembeschreibung: ".$_POST["problem"]."<br>";
echo "Lösung1: ".$_POST["PL1"]."<br>";
echo "Lösung2: ".$_POST["PL2"]."<br><br><br>";


$date=$_POST["Datum"];
$time=$_POST["time"];
$position=$_POST["position"];
$inventory=$_POST["inventory"];
$techniker=$_POST["techniker"];
$problembeschreibung=$_POST["problem"];
$lösung1=$_POST["PL1"];
$lösung2=$_POST["PL2"];

echo $date." Type: ".gettype($date)."<br>";
echo $time." Type: ".gettype($time)."<br>";
echo $position." Type: ".gettype($position)."<br>";
echo $inventory." Type: ".gettype($inventory)."<br>";
echo $techniker." Type: ".gettype($techniker)."<br>";
echo $problembeschreibung." Type: ".gettype($problembeschreibung)."<br>";
echo $lösung1." Type: ".gettype($lösung1)."<br>";
echo $lösung2." Type: ".gettype($lösung2)."<br><br><br>";


$servername = "localhost";
$username = "client";
$password = "clientCasinoBasel";
$DBname="techniker";

// Create connection

  $conn = new mysqli($servername, $username, $password,$DBname);





// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}
echo "Connected successfully<br><br><br>";






$sql = "INSERT INTO `logfile` (`Datum`, `Zeit`, `Position`, `Inventory`, `Techniker`, `Problembeschreibung`, `Problemloesung_primaer`, `Problemloesung_sekundaer`, `Timestamp`)
 VALUES ('$date', '$time', '$position', '$inventory', '$techniker', '$problembeschreibung', '$lösung1','$lösung2', current_timestamp());";
print_r($sql);
echo "<br><br>";
$result = $conn->query($sql);
if ($result === TRUE) {
  echo "New record created successfully";
} else {
  echo "Error: " . $sql . "<br>" . $conn->error;
}



if ($result === TRUE) {
    $conn->close();
  header('Location:index.php?query=true');

}










 ?>
