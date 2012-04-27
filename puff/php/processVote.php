<?php
session_start();
require('connection_open.php');
require('phpLibrary.php');
date_default_timezone_set('US/Pacific'); // set defualt timezone
$site = $_POST['site']; // get vote site
$site= preg_replace('/\s+/', '', $site); //strip whitespaces
$acc_id = $_SESSION['accountID'];
$time = time(); //unix timestamp
$next = $time + (12*60*60); //unix timestamp + 12 hours
		//$current_time = date("Y-m-d g:i:s a", $time); //formatted date
		//$next_time = date("Y-m-d g:i:s a", $next); //formatted date
$ip = get_ip_address();
$r_point = 10;

$account_info = mysql_query("SELECT last_vote_$site from login where account_id = $acc_id");
$account_info = mysql_fetch_array($account_info);

$voteip_info = mysql_query("SELECT next_vote_$site from vote_ip where ip_address = '$ip'") or die(mysql_error());
$voteip_count = mysql_num_rows($voteip_info);

$next_vote_time = $account_info[0] + (12*60*60);

if($next_vote_time < $time)
{
	if($voteip_count != 0)
	{
		$voteip_info = mysql_fetch_array($voteip_info);
		
		if($voteip_info[0] < $time)
		{
			$update_vote_time = mysql_query("UPDATE login set last_vote_$site = '$time' where account_id='$acc_id'") or die(mysql_error());
			$update_voteip = mysql_query("UPDATE vote_ip set next_vote_$site = '$next' where ip_address='$ip'")or die(mysql_error());
			
			$global_reg_info  = mysql_query("select account_id from global_reg_value where account_id = $acc_id");
			$global_reg_info_count = mysql_num_rows($global_reg_info);
			
			if($global_reg_info_count != 0)
			{
				$update_global_reg = mysql_query("UPDATE global_reg_value set str='#REWARDPOINTS', type=2, value = value + $r_point where account_id= '$acc_id'");
			}
			else
			{
				$insert_global_reg = mysql_query("INSERT into global_reg_value(str,type,value,account_id) VALUES('#REWARDPOINTS',2,'$r_point','$acc_id')");
			}
			
			if($update_vote_time && $update_voteip)
			{
				echo "Success";
			}
			else
			{
				echo 502;
			}
			
		}
		else
		{
			echo 500;
		}
		
	}
	else
	{
		$update_vote_time = mysql_query("UPDATE login set last_vote_$site = '$time' where account_id='$acc_id'") or die(mysql_error());
		$insert_voteip = mysql_query("INSERT into vote_ip(account_id,ip_address,next_vote_$site) VALUES('$acc_id','$ip','$next')")or die(mysql_error());
		
		$global_reg_info  = mysql_query("select account_id from global_reg_value where account_id = $acc_id");
		$global_reg_info_count = mysql_num_rows($global_reg_info);
			
		if($global_reg_info_count != 0)
		{
			$update_global_reg = mysql_query("UPDATE global_reg_value set str='#REWARDPOINTS', type=2, value = value + $r_point where account_id= '$acc_id'");
		}
		else
		{
			$insert_global_reg = mysql_query("INSERT into global_reg_value(str,type,value,account_id) VALUES('#REWARDPOINTS',2,'$r_point','$acc_id')");
		}
		
		if($insert_voteip && $update_vote_time)
		{
			
				echo "Success";
		}
		else
		{
			echo 502;
		}
	}
}
else
{
	echo 501;
}

require('connection_close.php');
?>