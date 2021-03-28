<?php
	session_start();
	if (isset($_SESSION['user']))
		header('location: ../admin-panel/');

	include('../DB/connection.php');
	include('auth_process.php');

	$error = '';
	$username = '';

	if ($_POST) {
		$username = $_POST['username'];
		$password = $_POST['password'];

		$error = validateLoginDetails($username, $password);

        if (!$error) {
			$error = login($connection, $username, $password);
        }
	}
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Login-Admin Panel</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
</head>
<body>
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100 p-t-40 p-b-20">
				<form class="login100-form validate-form" method="post">
				    <img src="images/adminlogo.png" style="max-width: 91%;padding-bottom: 20px;">
					<span class="login100-form-title">
						Welcome
					</span>
					<?php if ($error): ?>
					<div style="background-color:rgba(238, 77, 77, 1);color:white; padding: 0px 10px; border-radius: 50px">
						<span><?php echo $error; ?></span>
					</div>
					<?php endif; ?>
					<div class="m-t-40" style="position:relative;">
						<span>Username</span>
					</div>
					<div class="wrap-input100 validate-input m-b-35" style="height:42px">
						<input class="input100" type="text" name="username" value="<?php echo $username; ?>" autocomplete="off">
					</div>
					<div style="position:relative;">
						<span>Password</span>
					</div>
					<div class="wrap-input100 validate-input m-b-35" style="height:42px">
						<input class="input100" type="password" name="password">
					</div>

					<div class="container-login100-form-btn">
						<button class="login100-form-btn">
							Login
						</button>
					</div>
				</form>
				<div class="Website" style="
    text-align: center;
    padding-top: 30px;
"><a href="http://jyotiayurclinic.com/index.php" style="
    text-align: center;
">Back to Home Page</a></div>
			</div>
		</div>
	</div>
</body>
</html>
