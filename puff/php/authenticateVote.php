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
			echo 100;
		}
		else
		{
			echo 500;
		}
		
	}
	else
	{
		echo 100;
	}
}
else
{
	echo 501;
}
require('connection_close.php');
?>