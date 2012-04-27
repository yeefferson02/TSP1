<?php
session_start();
require('connection_open.php');
$acc_id = $_SESSION['accountID'];
$bet = $_POST['bet'];
$mainChar = $_POST['mainChar'];

$getCharInfo = mysql_query("SELECT zeny from `char` where char_id = $mainChar") or die(mysql_error());
$getCharInfo = mysql_fetch_array($getCharInfo);

if(is_numeric($bet))
{	
	if($bet >= 10000)	
	{
		if($bet <= $getCharInfo[0])
		{
			echo "ok!";	
		}	
		else
		{
			echo 501;
		}
	}
	else
	{
		echo 503; //minimum
	}
}
else
{
	echo 502; 
}
require('connection_close.php');
?>
