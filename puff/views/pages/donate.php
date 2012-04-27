<?php 
session_start();
error_reporting(0);
$acc_id = $_SESSION['accountID'];
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<script type="javascript">
				$(document).ready(function()
				{
					$('#donateProceed').click(function(){
						alert("adf");
						//$('.dynamicContent').load('donateDetails.php');
					});
				});
		</script>
	</head>

	<body >
		<div style="color:white; " align="center"  class="loadedPage">
			<br>
				Donate
			<br>
		</div>
		
		<div class="grid_12 divider">
			
		</div>
		
		<div class="form_holder loadedPage" align="justify" style="color:white; width:470px;">
			<div align="justify" style="width:450px; margin-left:10px;">
				<span style="color:orange;">Credit Conversion</span>
				<ul>
					<li>1 Credit = 1 USD
				
					<li>1 Credit = 45 PHP
				</ul>
				<span style="color:orange;">Donate via PayPal</span>
				<br>
				<ul>
					<li>Send your donation to : xfactorsx@hotmail.com
					<li>Put your main character's name in the note box
					<li>Send an email to   <strong>puffro.gaming@gmail.com</strong> with these information: <br /><br>
              *Senders Real Full Name :<br />
              *Name in Paypal Account: <br>
              *Your MAIN Character Name :<br />
              *Amount sent :<br />
			  *Date sent :
				
				</ul>
				
				<span style="color:orange;">Donate via Western, MLhuillier, Cebuana Lhuillier, LBC</span>
				<br>
				<ul>
					<li>Send your donations using these reciever information.
					<li>Name : Jake Mission
					<li>Address:Pakigne Minglanilla, Cebu
					<li>Contact Number: 0923 699 3009
					<li>After successfully sending your donation, please send an Email to <strong>puffro.gaming@gmail.com</strong> with these required info:<br><br>
					Reciever's Name:<br>
					Sender's Name:<br>
					In-game Name : <br>
					Sender's Contact Info : <br>
					Sender's Location: <br>
					Amount Sent: <br>
					Control/Tracking Number: <br>
					
				</ul>
			</div>
			<br>
		</div>
	</body>
</html>