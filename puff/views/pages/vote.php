<?php 
session_start();
error_reporting(0);
require('../../php/connection_open.php');
$acc_id = $_SESSION['accountID'];

?>
<html>
<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<script type="text/javascript" src="../../js/authscript.js"></script>
</head>
<body>
<div class="loadedPage">
		<br>
		<span style="color:#FFF; margin-left:190px;" >Vote For Points</span>
		
</div>

<div class="divider">

</div>

<div class="loadedPage">
<?php 
if($acc_id != "")
{
?>
		<br>
		<span style="color:#FFF; margin-left:125px;" > <a style="color:orange;cursor:pointer;" id="instructions"> <u>Click Here</u></a> for instructions on Voting. </span>
		<br>
		<br>
		
		<div style="margin-left:65px;">
			<table width="501" height="106" border="1">
			  <tr>
				<td width="109" scope="col" style="color:orange;">Username: </td>
				<td width="298" scope="col" id="username" style="color:#fff;"></td>
			   
			  </tr>
			  <tr>
				<td scope="row" style="color:orange;">Credits: </td>
				<td id="credits" style="color:#FFF"></td>
				
			  </tr>
			  <tr title="When Points reach upto 500, it is equivalent to 1 credit">
				<td scope="row" style="color:orange;">Reward Points: </td>
				<td id="rewards" style="color:#FFF"></td>
			  </tr>
			  <tr>
				<td scope="row" style="color:orange;">Last IP used: </td>
				<td id="ip" style="color:#FFF">&nbsp;</td>
			  </tr>
			</table>
			<br/>
			<table width="501" border="1">
			  <tr>
				<td colspan="2" scope="col"> 
					<a href="voteSite.php?mod_do=vote&mod_site=gtop" title="Top 100 Ragnarok Online sites" target="_blank" id="link_gtop">
					  <button id="gtop" type="button" value="gtop" style=" background-color:transparent;border:0" >
						<img src="http://www.gtop100.com/images/votebutton.jpg" border="0" alt="Top 100 Ragnarok Online sites">
					  </button>
					</a> 
				</td>

			  </tr>
			  
			</table>
		
			<br/>
			<table width="501" border="1">
			  <tr>
				<td colspan="2" scope="col">
					<a href="voteSite.php?mod_do=vote&mod_site=xtreme" target="_blank" title="Xtreme Top 100" id="link_xtreme">
						<button id="xtreme" type="button" value="xtreme" style="background-color:transparent;border:0">
							<img src="http://www.xtremeTop100.com/votenew.jpg" border="0" alt="Ragnarok Online Private Server">	
						</button>
					</a>
				</td>
				
			  </tr>
			</table>
			
			<br/>
			<table width="501" border="1">
			  <tr>
				<td colspan="2" scope="col">
					<a href="voteSite.php?mod_do=vote&mod_site=gamesites" target="_blank" title="Gamesites 100" id="link_gamesites">
						<button id="gamesites" type="button" value="gamesites" style="background-color:transparent;border:0">
							<img src="http://www.gamesites200.com/ragnarok/vote.gif" alt="Vote on the Ragnarok Online Top 200" border="0">
						</button>
					</a>
				</td>
			  </tr>
			</table>
			<br/>
			<table width="501" border="1">
			  <tr>
				<td colspan="2" scope="col">
					<a href="voteSite.php?mod_do=vote&mod_site=toparena" title="ragnarok servers" target="_blank" id="link_toparena">
						<button id="toparena" type="button" value="toparena" style="background-color:transparent; border:0">
							<img src="http://www.top100arena.com/hit.asp?id=76429&c=RO&t=2" title="ragnarok servers" alt="ragnarok servers" width="88" height="56" border="0">
						</button>
					</a>
				</td>
			  </tr>
			</table>
			<br/>
			<table width="501" border="1">
			  <tr>
				<td colspan="2" scope="col">
					<a href="voteSite.php?mod_do=vote&mod_site=ultimateserver" target="_blank" title="Ultimate Servers" id="link_ultimateserver">
						<button id="ultimateserver" type="button" value="ultimateserver" style="background-color:transparent; border:0">
							<img border="0" src="http://www.ultimateprivateservers.com/button2.png" alt="Ragnarok Online top 200"/>
						</button>
					</a>
				</td>
				
			  </tr>
			</table>

			<div id="vote_rules" title="Rules on Voting" style="display:none"> This is to inform all voters of the Rules and Sanctions </div>
			<div id="vote_instructions" title="Voting Instructions" style="display:none"> This is to instruct players how to vote! </div>
		</div>
		<br>
		<br>
<?php 
}
else
{?>
	<h1 style="color:white;"> Please <span id="login_first_vote" style="color:orange;cursor:pointer">Login</span> first to Vote! </h1>
<?php
}
?>
</div>
</body>
</html>
<?php require('../../php/connection_close.php'); ?>