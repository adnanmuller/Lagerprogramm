<?php

$eventIDs=$_POST['EventID'];
echo $eventIDs;
$testprint=substr($eventIDs,-3, 3);
if($testprint==="and"){
  $queryTrimmed=substr($eventIDs,0,-3);
}
echo $testprint;
echo "<br>";
echo $queryTrimmed;
echo "<br>";



  $con=mysqli_connect("localhost","client","clientCasinoBasel","techniker");
  // Check connection
  if (mysqli_connect_errno())
    {
    echo "Failed to connect to MySQL: " . mysqli_connect_error();
    }

  $sql="DELETE FROM `logfile` WHERE `logfile`.`Event_ID`=  IN ('.$queryTrimmed.')';
  echo $sql;
  echo "<br>";

  if ($result=mysqli_query($con,$sql))
    {
        echo "SQL OK";
        //  header('Location:../index.php?query=true');
          }



    // Free result set
    //mysqli_free_result($result);


  //mysqli_close($con);




 ?>
