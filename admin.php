<!DOCTYPE html>
<html lang="en">
<meta charset="UTF-8">
<title>Admin Login</title>
<meta name="viewport" content="width=device-width,initial-scale=1">

<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<link rel="stylesheet" href="CSS/adminPage.css">
<style>
</style>
<script src=""></script>

<style>
</style>
<script src=""></script>
<body>
  <?php
  // Initialize the session
  session_set_cookie_params(0);
  session_start();


  // inactive in seconds
  $inactive = 600;
  if( !isset($_SESSION['timeout']) )
  $_SESSION['timeout'] = time() + $inactive;

  $session_life = time() - $_SESSION['timeout'];

  if($session_life > $inactive)
  {  session_destroy(); header("Location:index.php");     }

  $_SESSION['timeout']=time();

  // Check if the user is logged in, if not then redirect him to login page
  if(!isset($_SESSION["loggedin"]) || $_SESSION["loggedin"] !== true ){
      header("location: index.php");
      exit;
  }
  ?>
<h1 id="admin_H1">Techniker Organizer Administration</h1>
<a href="logout.php" class="btn btn-danger ml-3">Sign Out of Your Account</a>





</body>
</html>
