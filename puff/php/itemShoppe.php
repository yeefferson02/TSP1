<?php
session_start();
error_reporting(0);
require('connection_open.php');
require('phpLibrary.php');
$id = $_POST['id'];
$amount = $_POST['amount'];
$acc_id = $_SESSION['accountID'];
$time = time();
$dateToday = date("l, F d, Y, g:i a",$time);
$getItemInfo = mysql_query("SELECT itemshoppe_item_id,shoppe,price,name,itemshoppe_id from itemshoppe where itemshoppe_id=$id") or die(mysql_error());
$getItemInfo = mysql_fetch_array($getItemInfo);

$getAccountStatus = mysql_query("SELECT premium, premium_expiry from login where account_id = $acc_id")or die(mysql_error());
$getAccountStatus = mysql_fetch_array($getAccountStatus);

$itemPrice = mysql_query("SELECT price from itemshoppe where itemshoppe_id = $id");
$itemPrice = mysql_fetch_array($itemPrice);
$itemPrice = $itemPrice[0];

$getCP = mysql_query("SELECT credits from login where account_id = $acc_id ");
$getCP = mysql_fetch_array($getCP);
$getRP = mysql_query("SELECT value from global_reg_value where account_id = $acc_id AND str = '#REWARDPOINTS' and type = 2");
$getRP = mysql_fetch_array($getRP);
$status = 1;
$total = $getItemInfo[2] * $amount;
	if($getItemInfo[1] == "item")
	{
		if($total <= $getCP[0])
		{
			if($getAccountStatus[0] == 1 && $getAccountStatus[1] > $time)
			{
				if($getItemInfo[2] != 1)
				{
					$discount = .10;
					$itemPrice = $itemPrice - ($itemPrice*$discount);
					$itemPrice = floor($itemPrice);
					$total =  $total - ($total*$discount);
					$total = floor($total);	
				}
			}
			
			if($id == 120 || $id == 121 || $id == 122)
			{
					if($id == 120)
						$expiry = $time + (168*60*60);
					if($id == 121)
						$expiry = $time + (360*60*60);
					if($id == 122)
						$expiry = $time + (720*60*60);
						
				$status = 2;
						
			}
			$recordPurchase = mysql_query("INSERT into purchase_history(date,itemshoppe_id,p_history_item_id,item_name,account_id,price,quantity,status) values('$dateToday',$getItemInfo[4],$getItemInfo[0],'$getItemInfo[3]',$acc_id,$itemPrice,$amount,$status)")or die(mysql_error());
			if($recordPurchase)
			{
				$oneDay = $time + (24*60*60);
				$makePremium = mysql_query("UPDATE login set premium = 1, premium_expiry = $expiry, group_id = 1 where account_id = $acc_id");
				//make characters premium status
				$getCharId = mysql_query("SELECT char_id from `char` where account_id = $acc_id");
					while($row = mysql_fetch_array($getCharId))
					{
						$makeCharPremium = mysql_query("INSERT into global_reg_value(char_id,str,value,type,account_id) VALUES($row[0],'premdaily',$oneDay,3,0)");
					}
					
				$deductRewardPoints = mysql_query("UPDATE login SET credits = credits - $total where account_id = $acc_id");
				$reduceStocks = mysql_query("UPDATE itemshoppe set stock = stock - $amount where itemshoppe_id=$id");
				echo "[Credits]Thank you for Purchasing! ^_^";
			}
		}
		else
		{
			echo "C501";
		}
	}
	else if($getItemInfo[1] == "reward")
	{
		if($total <= $getRP[0])
		{	
			if($getAccountStatus[0] == 1 && $getAccountStatus[1] > $time)
			{
				if($getItemInfo[2] != 1)
				{
					$discount = .10;
					$itemPrice = $itemPrice - ($itemPrice*$discount);
					$itemPrice = floor($itemPrice);
					$total =  $total - ($total*$discount);
					$total = floor($total);
				}
			}
			
			$recordPurchase = mysql_query("INSERT into purchase_history(date,itemshoppe_id,p_history_item_id,item_name,account_id,price,quantity,status) values('$dateToday',$getItemInfo[4],$getItemInfo[0],'$getItemInfo[3]',$acc_id,$itemPrice,$amount,$status)")or die(mysql_error());
			if($recordPurchase)
			{
				$deductRewardPoints = mysql_query("UPDATE global_reg_value SET value = value - $total where account_id = $acc_id AND str = '#REWARDPOINTS' and type = 2");
				$reduceStocks = mysql_query("UPDATE itemshoppe set stock = stock - $amount where itemshoppe_id=$id");
				echo "[Rewards]Thank you for Purchasing! ^_^";
			}
		}
		else
		{
			echo "R501";
		}
	}
require('connection_close.php');
?>