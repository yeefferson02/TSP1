<?php
session_start();
//error_reporting(0);
require('connection_open.php');
require('phpLibrary.php');
$id = $_POST['id'];
$amount = $_POST['amount'];
$acc_id = $_SESSION['accountID'];
$time = time();
$dateToday = date("l, F d, Y g:i a",$time);

$getItemInfo = mysql_query("SELECT itemshoppe_item_id,shoppe,price from itemshoppe where itemshoppe_id=$id") or die(mysql_error());
$getItemInfo = mysql_fetch_array($getItemInfo);

$getStockInfo = mysql_query("SELECT stock from itemshoppe where itemshoppe_id=$id");
$getStockInfo = mysql_fetch_array($getStockInfo);

$getCP = mysql_query("SELECT credits from login where account_id = $acc_id ");
$getCP = mysql_fetch_array($getCP);
$getRP = mysql_query("SELECT value from global_reg_value where account_id = $acc_id AND str = '#REWARDPOINTS'");
$getRP = mysql_fetch_array($getRP);

$total = $getItemInfo[2] * $amount;
if(is_numeric($amount))
{
	if($getItemInfo[1] == "item")
	{
		if($getStockInfo[0] >= 1)
		{
			if($total <= $getCP[0])
			{
				echo 101;
			}
			else
			{
				echo 505;
			}
		}
		else
		{
			echo 502;//stocks error
		}
	}
	else if($getItemInfo[1] == "reward")
	{
		if($getStockInfo[0] >= 1)
		{
			if($total <= $getRP[0])
			{	
				echo 101;
			}
			else
			{
				echo 506;
			}
		}
		else
		{
			echo 502;//stocks error
		}
	}
}
else
{
	echo 507;//must be integer;
}

require('connection_close.php');
?>