<?php

function connectDB($servername,$username,$password,$DBname){

return new mysqli($servername,$username,$password,$DBname);

}

 ?>
