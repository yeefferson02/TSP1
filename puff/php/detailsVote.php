<?php 
session_start();
require('connection_open.php');
require('phpLibrary.php');
date_default_timezone_set('US/Pacific');
$acc_id = $_SESSION['accountID'];
$ip = get_ip_address();
$getVoteDetails = mysql_query("SELECT credits,userid,last_vote_gtop,last_vote_xtreme,last_vote_gamesites,last_vote_toparena,last_vote_ultimateserver from login where account_id = $acc_id");
$getVoteDetails = mysql_fetch_array($getVoteDetails);

$getVoteipDetails = mysql_query("SELECT next_vote_gtop,next_vote_xtreme,next_vote_gamesites,next_vote_toparena,next_vote_ultimateserver, ip_address from vote_ip where ip_address ='$ip'");
$getVoteipDetails = mysql_fetch_array($getVoteipDetails);

$getRewardDetails = mysql_query("SELECT value from global_reg_value where account_id = '$acc_id' AND str='#REWARDPOINTS' AND type = 2");
$getRewardDetails = mysql_fetch_array($getRewardDetails);

		$voteDetails = array('credits' => $getVoteDetails[0],
							 'rewards' => $getRewardDetails[0],
							 'username' => $getVoteDetails[1],
							 'last_vote_gtop' => date("Y-m-d g:i:s a",$getVoteDetails[2]),
							 'last_vote_xtreme' => date("Y-m-d g:i:s a",$getVoteDetails[3]),
							 'last_vote_gamesites' => date("Y-m-d g:i:s a",$getVoteDetails[4]),
							 'last_vote_toparena' => date("Y-m-d g:i:s a",$getVoteDetails[5]),
							 'last_vote_ultimateserver' => date("Y-m-d g:i:s a",$getVoteDetails[6]),
							 'status_gtop' =>  date("Y-m-d g:i:s a",$getVoteipDetails[0]),
							 'status_xtreme' => date("Y-m-d g:i:s a",$getVoteipDetails[1]),
							 'status_gamesites' =>  date("Y-m-d g:i:s a",$getVoteipDetails[2]),
							 'status_toparena' =>  date("Y-m-d g:i:s a",$getVoteipDetails[3]),
							 'status_ultimateserver' =>  date("Y-m-d g:i:s a",$getVoteipDetails[4]),
							  'ip' => $getVoteipDetails[5]);	
	
	echo json_encode($voteDetails);					 


require('connection_close.php');

?>