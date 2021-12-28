<!DOCTYPE html>
<html lang="en">
<meta charset="UTF-8">
<title>Techniker Lagerprogramm</title>
<meta name="viewport" content="width=device-width,initial-scale=1">
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!--<script type="text/javascript" src="JS/main.js"></script>
<script type="text/javascript" src="JS/bindProblem12.js"></script>
<script type="text/javascript" src="JS/CookieForTechName.js"></script>
<script type="text/javascript" src="JS/historyLoeschen.js"></script>-->
<link rel="stylesheet" href="../CSS/styles.css">
<style>
</style>
<script src=""></script>
<body id="body">

  <h1 id="index_H1">Techniker Organizer Update</h1>

<?php
//if (isset($_POST['submit'])===false) {
  if (isset($_POST['action'])!="Delete" || isset($_POST['action'])!="Update") {
    //echo "no action POST";
    //echo $_POST['action'];
   header('Location:../index.php?query=false');
  // code...
}
$queryTrimmed;
$eventIDs=$_POST['EventID'];
//echo $eventIDs;
$testprint=substr($eventIDs,-1, 1);
if($testprint===","){
global  $queryTrimmed;
$queryTrimmed=substr($eventIDs,0,-1);
}
//echo $testprint;
//echo "<br>";
//echo $queryTrimmed;
//echo "<br>";
//--------------------------UPDATE-------------------------------------------
if ($_POST['action'] == 'Update') {
  //echo "update";

  $con=mysqli_connect("localhost","client","clientCasinoBasel","techniker");
  // Check connection
  if (mysqli_connect_errno())
    {
    echo "Failed to connect to MySQL: " . mysqli_connect_error();
    }
      $sql="SELECT * FROM `logfile` WHERE `logfile`.`Event_ID`  IN (".$queryTrimmed.")";

      if ($result=mysqli_query($con,$sql))
        {
            //echo "SQL OK";
        //     header('Location:../index.php?query=true');
           }else {
             echo "values not deleted in DB";
           }


echo '<form action="/action_page.php ">';

//echo   '<div class="d-flex">';
           while ($row=mysqli_fetch_assoc($result))
             {
              // echo '<div class="mb-3 mt-3">';
            //  echo '<div class="d-flex">';
               echo '<div class="wrapperUpdate ">';
               echo   '<div class="d-flex">';
               echo '<div class="flex-fill dateU ">';
               echo '<label for="DatumU" class="form-label">Datum:</label>';
               echo '<input type="date" class="form-control " id="" placeholder="Enter email" name="DatumU" value="'.$row["Datum"].'">';
              echo '</div>';
               // echo '<div class="mb-3 mt-3  ">';
               echo '<div class="flex-fill dateU ">';
               echo '<label for="TimeU" class="form-label ">Zeit:</label>';
               echo '<input type="time" class="form-control" arrayDeleteHistory placeholder="Enter email" name="TimeU" value="'.$row["Zeit"].'">';
               echo '</div>';
            //   echo '<div class="mb-3 mt-3  ">';
            echo '<div class="flex-fill  dateU">';
               echo '<label for="PositionU" class="form-label">Position:</label>';
               echo '<input type="text" class="form-control " id="" placeholder="Enter email" name="PositionU" value="'.$row["Position"].'">';
               echo '</div>';
            //   echo '<div class="mb-3 mt-3  flex-fill">';
              echo '<div class="flex-fill dateU ">';
               echo '<label for="InventoryU" class="form-label">Inventory:</label>';
               echo '<input type="text" class="form-control " id="" placeholder="Enter email" name="InventoryU" value="'.$row["Inventory"].'">';
               echo '</div>';
               echo '<div class="flex-fill dateU">';
               echo '<label for="TechnikerU" class="form-label">Techniker:</label>';
               echo '<input type="text" class="form-control " id="" placeholder="Enter email" name="TechnikerU" value="'.$row["Techniker"].'">';
               echo '</div>';

            //   echo '<div class="mb-3 mt-3  flex-fill">';

              echo '</div>';
              echo   '<div class="d-flex">';
               echo '<div class="flex-fill">';
               echo '<label for="ProblembeschreibungU" class="form-label">Problembeschreibung:</label>';
               echo '<input type="text" class="form-control" id="" placeholder="Enter email" name="ProblembeschreibungU" value="'.$row["Problembeschreibung"].'">';
               echo '</div>';
               echo '<div class="flex-fill">';
               echo '<label for="ProblemlösungPrimärU" class="form-label">Problemlösung Primär:</label>';
               echo '<input type="text" class="form-control" id="" placeholder="Enter email" name="ProblemlösungPrimärU" value="'.$row["Problemloesung_primaer"].'">';
               echo '</div>';
               echo '<div class="flex-fill">';
               echo '<label for="ProblemlösungSekundärU" class="form-label">Problemlösung sekundär:</label>';
               echo '<input type="text" class="form-control" id="" name="ProblemlösungSekundärU" value="'.$row["Problemloesung_sekundaer"].'">';
               echo '</div>';
               echo '</div>';
               echo '</div>';
            //   echo '</div>';
               //  echo '<option value="'.$row["Stoerungen"].'" idBind="'.$row["problemloesung_primaer"].'" idBindA="'.$row["problemloesung_sekundaer"].'" >';
              //   echo '<tr onclick="createAlertBox(this)" class="" ><td>'.$row["Datum"].'</td><td>'.$row["Zeit"].'</td><td>'.$row["Position"].'</td><td>'.$row["Inventory"].'</td><td>'.$row["Techniker"].'</td><td>'.$row["Problembeschreibung"].'</td><td>'.$row["Problemloesung_primaer"].'</td><td>'.$row["Problemloesung_sekundaer"].
                // '</td><td><input type="checkbox" class="selectInput" name="'.$row["Event_ID"].'" id="'.$row["Event_ID"].'" value="'.$row["Event_ID"].'"></td></tr>';
             }



 //echo '  </div>';
 echo '<div class="d-flex justify-content-center">';
  echo '<button type="submit" id="submitUpdate" class="m-2 btn btn-primary">Submit</button></form>';
 echo '</div>';
//----------------------------DELETE-.-----------------------------------------
} else if ($_POST['action'] == 'Delete') {
    //action for delete
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
}





    // Free result set
    //mysqli_free_result($result);


  //mysqli_close($con);




 ?>



</body>
</html>
