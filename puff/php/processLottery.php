<?php
session_start();
error_reporting(0);
require('connection_open.php');
require('phpLibrary.php');
date_default_timezone_set('US/Pacific'); 
$acc_id = $_SESSION['accountID'];
$num1 = strip_tags($_POST['num1']);
$num2 = strip_tags($_POST['num2']);
$num3 = strip_tags($_POST['num3']);
$bet = strip_tags($_POST['bet']);
$mainChar = $_POST['mainChar'];
$combi = strip_tags($num1.$num2.$num3);


$getBetCount = mysql_query("SELECT bet from lottery_bets where account_id = $acc_id");
$getBetCount = mysql_num_rows($getBetCount);

if($getBetCount < 3)
{
	$update_lottery = mysql_query("INSERT INTO lottery_bets(account_id, char_id,number_combination,bet) VALUES($acc_id,$mainChar,$combi,$bet)") or die(mysql_error());
	$deduct_zeny = mysql_query("UPDATE `char` SET zeny = zeny - $bet where char_id = $mainChar AND account_id=$acc_id") or die(mysql_error());
	if($update_lottery && $deduct_zeny)
	{
		echo "ok";
	}
	else
	{
		echo 501;
	}
}
else
{
	echo 502;
}
require('connection_close.php');
?>