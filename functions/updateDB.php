<?php




echo "<br>";
print_r($_POST);
echo $_POST['submit'];




if(isset($_POST['submit'])){
echo "hallo Update DB";
echo "<br>";

$x=0;
$xEnd=$_POST['loopNumberEnd'];

echo $x;
echo "<br>";
echo $xEnd;
echo "<br>";
do{
  echo "loop";
  echo "<br>";
  $eventID=$_POST['eventID'.$x];
  $datum=$_POST['DatumU'.$x];
  $zeit=$_POST['TimeU'.$x];
  $position=$_POST['PositionU'.$x];
  $inventory=$_POST['InventoryU'.$x];
  $techniker=$_POST['TechnikerU'.$x];
  $problem=$_POST['ProblembeschreibungU'.$x];
  $loesung1=$_POST['ProblemlösungPrimärU'.$x];
  $loesung2=$_POST['ProblemlösungSekundärU'.$x];

  UpdateDB($eventID,$datum,$zeit,$position,$inventory,$techniker,$problem,$loesung1,$loesung2);
  $x++;
}while ($x < $xEnd);
 header('Location:../index.php?query=false');
  // Free result set












}else {
   header('Location:../index.php?query=false');
}

function UpdateDB($event,$datum,$zeit,$position,$inventory,$techniker,$problem,$loesung1,$loesung2){
$con=mysqli_connect("localhost","client","clientCasinoBasel","techniker");
if (mysqli_connect_errno())
  {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }
/*
  $sql="UPDATE `logfile` SET `Datum` = '".$datum."', `Zeit` = '".$zeit."', `Position` = '".$position."',
   `Inventory` = '".$inventory."', `Techniker` = '".$techniker."', `Problembeschreibung` = '$problem',
    `Problemloesung_primaer` = '".$loesung1."', `Problemloesung_sekundaer` = '".$loesung2"' WHERE `logfile`.`Event_ID` ={$event};";
  */
$sql="UPDATE `logfile` SET `Datum` = '{$datum}', `Zeit` = '{$zeit}', `Position` = '{$position}', `Inventory` = '{$inventory}', `Techniker` = '{$techniker}', `Problembeschreibung` = '{$problem}', `Problemloesung_primaer` = '{$loesung1}', `Problemloesung_sekundaer` = '{$loesung2}' WHERE `logfile`.`Event_ID` = '{$event}';";
print($sql);

$result=mysqli_query($con,$sql);
//mysqli_free_result($result);
var_dump($result);

mysqli_close($con);

}

//UpdateDB(166,"test","test","test","test","test","test","test","test");
 ?>
