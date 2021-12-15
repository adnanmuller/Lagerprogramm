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

<h1 id="admin_H1">Login Administrator</h1>

<form action="login.php" id="loginFormAdmin" method="post">
  <div class="mb-3 mt-3">
    <label for="adminBenuzer" class="form-label">Benuzer:</label>
    <input type="text" class="form-control" id="adminBenuzer" placeholder="Username" name="adminBenuzer">
  </div>
  <div class="mb-3">
    <label for="pwdAdmin" class="form-label">Password:</label>
    <input type="password" class="form-control" id="pwdAdmin" placeholder="Enter password" name="pwdAdmin">
  </div>
  <div class="form-check mb-3">
  </div>
  <div class="d-flex justify-content-center">
  <button type="submit" class="btn btn-primary">Eingeben</button>
</div>
</form>

<div class="d-flex justify-content-center">
<button type="submit" class="btn btn-primary" id="goBackButton"><a href="index.php">Zurück</a></button>
</div>




</body>
</html>
