<?php





echo "Problembeschreibung: ".$_POST["problem"]."<br>";
echo "Lösung1: ".$_POST["PL1"]."<br>";
echo "Lösung2: ".$_POST["PL2"]."<br><br><br>";



$problembeschreibung=$_POST["problem"];
$lösung1=$_POST["PL1"];
$lösung2=$_POST["PL2"];


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






$sql = "INSERT INTO `event_favoriten` (`Stoerungen`, `problemloesung_primaer`, `problemloesung_sekundaer`,`timestamp`)
 VALUES ('$problembeschreibung', '$lösung1', '$lösung2', current_timestamp());";
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
 header('Location:admin.php?query=true');

}










 ?>
