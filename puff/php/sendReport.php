<?php 
session_start();
require('connection_open.php');
require('phpLibrary.php');

$acc_id = $_SESSION['accountID'];
$time = time();
$next = $time + (12*60*60);
$title = sanitize(strip_tags($_POST['title']));
$content = sanitize(strip_tags($_POST['content']));

if($title != "" && $content !="")
{
	$checkTime = mysql_query("select report_time from login where account_id = $acc_id");
	$checkTime = mysql_fetch_array($checkTime);
	if($checkTime[0] < $time)
	{
			$recordReport = mysql_query("insert into reports(account_id,date,title,content) values('$acc_id','$time','$title','$content')") or die(mysql_error());
			$recordTime = mysql_query("UPDATE login set report_time = $next where account_id = $acc_id") or die(mysql_error());
				if($recordReport && $recordTime)
				{
					echo 100;
				}
				else
				{
					echo 503;//sql error
				}
	}
	else
	{
		echo 502;//time restrict
	}
}
else
{
	echo 501;//empty fields
}

require('connection_close.php');
?>