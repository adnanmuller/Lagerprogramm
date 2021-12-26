<?php
$queryTrimmed;
$eventIDs=$_POST['EventID'];
echo $eventIDs;
$testprint=substr($eventIDs,-1, 1);
if($testprint===","){
global  $queryTrimmed;
$queryTrimmed=substr($eventIDs,0,-1);
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

  $sql="DELETE FROM `logfile` WHERE `logfile`.`Event_ID`  IN (".$queryTrimmed.")";
  echo $sql;
  echo "<br>";

  if ($result=mysqli_query($con,$sql))
    {
        echo "SQL OK";
         header('Location:../index.php?query=true');
       }else {
         echo "values not deleted in DB";
       }



    // Free result set
    //mysqli_free_result($result);


  //mysqli_close($con);




 ?>
