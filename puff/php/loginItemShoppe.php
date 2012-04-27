<?php
	session_start();
	include("connection_open.php");
	
	$username = $_POST['username'];
	$password = $_POST['password'];
	
	$username = stripslashes($username);
	$password = stripslashes($password);

	/* strips HTML tags from the string */
	$username= strip_tags($username);
	$password = strip_tags($password);
	
	/*removes all special characters*/
	$username =	preg_replace('/[^a-zA-Z0-9_ -]/s', '', $username);
	$password =	preg_replace('/[^a-zA-Z0-9_ -]/s', '', $password);
	
	$password = md5($password);	/*encrypt password*/
	
	
	
	$loginQuery = "SELECT `account_id`, `premium`,`credits`
					FROM login
					WHERE `userid` = '$username'
					AND `user_pass` = '$password' ";
					
	$loginSQL = mysql_query($loginQuery);
	$loginCount = mysql_num_rows($loginSQL);
	
	
	if($loginCount != 0)
	{
		$loginResult = mysql_fetch_row($loginSQL);	
		$_SESSION['username'] = $username;
		$_SESSION['accountID'] = $loginResult[0];
		$_SESSION['premium'] = $loginResult[1];
		
		$getAccountStatus = mysql_query("SELECT premium, premium_expiry from login where account_id = $acc_id")or die(mysql_error());
		$getAccountStatus = mysql_fetch_array($getAccountStatus);
		
		if($getAccountStatus[0] == 1 && $getAccountStatus[1] < $time)
		{
			$cancelPremium = mysql_query("UPDATE login premium = 0, premium_expiry = 0 where account_id = $loginResult[0]");
		}
		
		echo $_SESSION['username'];
		
		header('Location: ../views/pages/itemshoppe/index.php');
		
		
	}
	else{
	?>
		<script>
			alert("User/Pass Does Not Exist");
			window.location = '../views/pages/itemshoppe/index.php';
		</script>
	
	<?php
	}
	
	include ("connection_close.php");
	
?>