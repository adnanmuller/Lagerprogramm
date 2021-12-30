<?php

function connectDB(){

//return new mysqli($servername,$username,$password,$DBname);

return mysqli_connect("localhost","client","clientCasinoBasel","techniker");
}

 ?>
