<?php
session_start();
error_reporting(0);
require('connection_open.php');
$acc_id = $_SESSION['accountID'];
$old_email = $_POST['old_email'];
$new_email = $_POST['new_email'];
//echo $acc_id." This is Change Email";

$checkOldEmail = mysql_query("SELECT email from login where account_id = $acc_id AND email = '$old_email'");
$checkOldEmail_count = mysql_num_rows($checkOldEmail);

$checkNewEmail = mysql_query("SELECT email from login where account_id = $acc_id AND email = '$new_email'");
$checkNewEmail_count = mysql_num_rows($checkNewEmail);

if($checkOldEmail_count >= 1)
{
	if($checkNewEmail_count == 0)
	{
		$changeEmail = mysql_query("UPDATE login set email = '$new_email' where email = '$old_email' AND account_id = $acc_id");
		if($changeEmail)
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
		echo 506;//newEmail error
	}
}
else
{
	echo 505;//oldEmail error
}

require('connection_close.php');
?>
