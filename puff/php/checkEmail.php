<?php
session_start();
require('connection_open.php');
$acc_id = $_SESSION['accountID'];
$email = $_POST['old_email'];

$checkEmail = mysql_query("SELECT email from login where account_id = $acc_id AND email = '$email'");
$checkEmail_count = mysql_num_rows($checkEmail);

if($checkEmail_count >= 1)
{
	echo 505;
}
else
{
	echo 100;
}

require('connection_close.php');
?>
