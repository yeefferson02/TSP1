<?php
session_start();
require('connection_open.php');
$acc_id = $_SESSION['accountID'];
$password = $_POST['old_password'];
$password = md5($password);

$checkPassword = mysql_query("SELECT user_pass from login where account_id = $acc_id AND user_pass = '$password'");
$checkPassword_count = mysql_num_rows($checkPassword);

if($checkPassword_count >= 1)
{
	echo 100;
}
else
{
	echo "Password does not match!";
}
require('connection_close.php');
?>