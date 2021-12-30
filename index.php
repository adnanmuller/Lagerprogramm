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
<script type="text/javascript" src="JS/main.js"></script>
<script type="text/javascript" src="JS/bindProblem12.js"></script>
<script type="text/javascript" src="JS/CookieForTechName.js"></script>
<script type="text/javascript" src="JS/historyLoeschen.js"></script>
<link rel="stylesheet" href="CSS/styles.css">
<style>
</style>
<script src=""></script>
<body id="body">

<?php
include_once 'functions/queryFavoriten.php';
include_once 'functions/connectDB.php';
include_once 'functions/queryEintraege.php';

 ?>




  <h1 id="index_H1">Techniker Organizer</h1>
  <div id="clockWrapper">
<span class="digital-clock">00:00:00</span>
<!--<span class="digital-clock-ampm"></span>-->
</div>

  <div class="d-flex">

    <div class="p-2  flex-fill" id="leftPanel"><h3 id="headerMainpageH3">DRGT Events</h3></div>


  <div class="p-2 bg-info flex-fill" id="middlePanel">
      <form action="log_event.php" method="post" autocomplete="on">
        <div class="d-flex">
        <div class="mb-3 mt-3  flex-fill">
          <label for="Datum" class="form-label">Datum:</label>
          <input type="date" class="form-control" id="dateFrom" placeholder="Enter date" value="<?php echo date('Y-m-d')?>" name="Datum">
        </div>
        <div class="mb-3 mt-3 flex-fill">
          <label for="time" class="form-label">Zeit:</label>
          <input type="time" class="form-control" id="timeForm" placeholder="Enter time"  name="time">
        </div>
        <div class="mb-3 mt-3 flex-fill">
          <label for="position" class="form-label">Position:</label>
          <input type="text" class="form-control" id="positionForm" placeholder="Enter position" name="position">
        </div>
        <div class="mb-3 mt-3 flex-fill">
          <label for="inventory" class="form-label">Inventory:</label>
          <input type="number" class="form-control" id="inventoryForm" placeholder="Enter inventory" name="inventory">
        </div>
        <div class="mb-3 mt-3 flex-fill">
          <label for="techniker" class="form-label">Techniker:</label>
          <select class="form-select" aria-label="Default select example" id="TechnikerID" name="techniker">
            <option selected value="Sarika">Sarika</option>
            <option value="Nicolas">Nicolas</option>
            <option value="Alfredo">Alfredo</option>
          </select>
        </div>
        </div>

        <div class="mb-3 mt-3">
          <label for="problembeschreibung" class="form-label">Problembeschreibung:</label>
          <input type="text" class="form-control" idbind=""  name="problem" list="cityname" id="PLForm" value="  ">
          <datalist id="cityname" >
            <?php
              echoFavoriteFilter(1);
             ?>
          </datalist>
        </div>
        <div class="mb-3 mt-3" id="hovertriggerLoesung">
          <label for="PL1" class="form-label">Problemlösung Primär:</label>
          <input type="text" class="form-control" id="PL1Form" value=" " list="loesung1"  name="PL1">
          <datalist id="loesung1">
            <?php
              echoFavoriteFilter(2);
            ?>
          </datalist>
        </div>
        <div class="mb-3 mt-3">
          <label for="PL2" class="form-label">Problemlösung sekundär:</label>
          <input type="text" class="form-control" id="PL2Form" value=" " list="loesung2"  name="PL2">
          <datalist id="loesung2">
            <?php
              echoFavoriteFilter(3);
            ?>
          </datalist>
        </div>
        <div class="d-flex justify-content-center">
            <button type="submit" class="btn btn-primary " id="submitLog">Eingeben</button>
      </div>

      </form>

      <div id="letzteEinträge">


          <h4 class="text-center ">Letzte Einträge</h4>
          <div id="wrapperAndernLoschen" class="text-center ">
            <form class="" action="functions/deleteHistory.php" method="post">
            <!--  <button type="button" class="btn btn-warning">Ändern</button>-->
            <input type="text" name="EventID" id="historyLoeschenInput" value="">
              <input type="submit" class="btn btn-danger" name="action" value="Delete" id="submitLöschen"  />
              <input type="submit" class="btn btn-info" name="action" value="Update" />
          <!--<div class="form-check form-switch ">
                <input class="form-check-input"  type="checkbox" id="mySwitch1" name="darkmode" value="yes" checked>
                <label class="form-check-label"  for="mySwitch">Ändern</label>
              </div>
              <div class="form-check form-switch">
                <input class="form-check-input"  type="checkbox" id="mySwitch2" name="darkmode" value="yes" >
                <label class="form-check-label"  for="mySwitch">Löschen</label>
              </div>-->
          <!--  <button type="button" class="btn btn-primary">Mehr</button>-->


          </div>
          <table class="table table-striped" id="tabelHistory" >
          <thead id="tableHeadSticky" >
         <tr>
           <th id="fixWidthDate">Datum</th>
           <th>Zeit</th>
           <th>Position</th>
           <th>Inventory</th>
           <th>Techniker</th>
           <th>Problembeschreibung</th>
           <th>Problemlösung Primär</th>
           <th>Problemlösung sekundär</th>
         </tr>
       </thead>
       <tbody id="historyTableBody">
         <tr>
           <?php
    queryEintraege(0);
            ?>
         </tr>

       </tbody>
     </table>


</div>
    </div>


    <div class=" flex-fill " id="containerAdminLogin">
      <button type="button" class="btn btn-primary" ><a href="loginAdmin.php">Administrator</a></button>

</div>


  </div>


  <?php
    if(isset($_GET['query'])){
      if($_GET['query']==true){
   echo "<p id='queryEintrag' class='text-success ' >Eintrag wurde erfolgreich gespeichert.</p>";
      }
  }

    ?>
<!--for debugg
<p id="demo">ddd</p>
-->

<div class="form-check form-switch ">
  <input class="form-check-input" type="checkbox" id="mySwitch" name="darkmode" value="yes" checked>
  <label class="form-check-label " for="mySwitch">Dark Mode</label>
</div>
<div id="AlertBox1">

</div>

</body>
</html>






<?php


//echo $_SERVER['DOCUMENT_ROOT']
//echo(phpinfo());


?>
