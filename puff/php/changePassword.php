<?php
session_start();
require('connection_open.php');
$acc_id = $_SESSION['accountID'];
$old_password = $_POST['old_password'];
$new_password = $_POST['new_password'];
$new_password = md5($new_password);
$old_password = md5($old_password);

$checkPassword = mysql_query("SELECT user_pass from login where account_id = $acc_id AND user_pass = '$old_password'");
$checkPassword_count = mysql_num_rows($checkPassword);

if($checkPassword_count >= 1)
{
	$updatePassword = mysql_query("UPDATE login set user_pass = '$new_password' where user_pass = '$old_password' AND account_id = $acc_id");
	if(	$updatePassword)
	{
		echo 100;
	}
	else
	{
		echo 200;
	}
}
else
{
	echo 500;
}

require('connection_close.php');
?>
