<?php
//require_once'../config.php';
//print($_SERVER['DOCUMENT_ROOT']. "config.php");
require($_SERVER['DOCUMENT_ROOT']. "/Techniker_Organizer/config.php");
function connectDB(){

//return new mysqli($servername,$username,$password,$DBname);

return mysqli_connect(DBHOSTNAME,DBUSERNAME,DBPWD,DBNAME);
}


 ?>
