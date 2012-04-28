<?php
	session_start();
	error_reporting(0);
	
	$username = $_SESSION['username'];
	$acc_id = $_SESSION['accountID'];
	include("../../php/connection_open.php");
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		
		<link rel="stylesheet" type="text/css" href="../../css/reset.css"/>
		<link rel="stylesheet" type="text/css" href="../../css/text.css"/>
		<link rel="stylesheet" type="text/css" href="../../css/960.css"/>
		<link rel="stylesheet" type="text/css" href="../../css/custom.css"/>
	
	
		<link rel="stylesheet" type="text/css" href="../../css/lightness/jquery-ui-1.8.19.custom.css"/>
		
		<script type="text/javascript" src="../../js/jquery-1.7.2.min.js"></script>
		<script type="text/javascript" src="../../js/jquery-ui-1.8.19.custom.min.js"></script>
		<script type="text/javascript" src="../../js/mainscript.js"></script>
		<script type="text/javascript" src="../../js/clock.js"></script>
		<script type="text/javascript" src="http://www.google.com/recaptcha/api/js/recaptcha_ajax.js"></script>
		
		
		<script>
		$(function() {
			$( "#tabs" ).tabs();
			$( ".tabs-bottom .ui-tabs-nav, .tabs-bottom .ui-tabs-nav > *" )
				.removeClass( "ui-corner-all ui-corner-top" )
				.addClass( "ui-corner-bottom" );
		});
		</script>
		
		<style>
		#tabs { height: 260px; } 
		.tabs-bottom { position: relative; } 
		.tabs-bottom .ui-tabs-panel { height: 195px; overflow: auto; } 
		.tabs-bottom .ui-tabs-nav { position: absolute !important; left: 0; bottom: 0; right:0; padding: 0 0.2em 0.2em 0; height:33px; } 
		.tabs-bottom .ui-tabs-nav li { margin-top: -2px !important; margin-bottom: 1px !important; margin-left: 7px; border-top: none; border-bottom-width: 1px; }
		.ui-tabs-selected { margin-top: -3px !important; }
		</style>
	</head>

	<body>
		<div id="header">
			<div class="container_24" style="position:relative;">
				<div class="grid_3 alpha "  id="homeMenu">
					
				</div>
				
				<div class="grid_3 " id="serverInfoMenu">

				</div>
				
				<div class="grid_3 " id="itemShoppeMenu">
				
				</div>
				
				<div class="grid_3 " id="voteMenu">

				</div>
				
				<a href ="http://puff-ro.proboards.com/" target="_blank">
					<div class="grid_3 " id="ForumMenu">
				
					</div>
				</a>
				<div class="grid_3 " id="donateMenu">
				</div>
				
				<div class="grid_3 " id="downloadMenu">

				</div>
				
				<div class="grid_3 omega " id="contactUsMenu">
			
				</div>
			
			</div>
		
		</div>
		
		
		
		<div id="top">
			<div class="container_24" id="banner">
			<?php if($username == ''){ ?>	
				<div id="registerButton">
					<div align="center" style="margin-top:8px;cursor:pointer;">
						<font color="white"> 
							Register
						</font>
					</div>
				</div>
			<?php }?>
			</div>
			
			<div id="cloudBanner">
			
			</div>
		</div>
		
		
		
		<!----------------------------------------------------------------------------------
			LOWER PART OF THE BANNER
		------------------------------------------------------------------------------------>
		<div id="bottom" >
			<div class="container_24" >
				<div class="grid_6 alpha">
				
					<!----------------------------------------------------------------------------------
						This is for the subMenu AFTER login
					------------------------------------------------------------------------------------>
					<?php
						if($username != '') // show submenu
						{
					?>
						<div class="grid_6 subMenuItem" id="sub_account">
							<div class="subMenuIcon" >
								<img src="../images/submenu/user.png" />
							</div>
							<div style="margin-top:12px; margin-left:45px;">
								<font color="white"> 
									My Account
								</font>

							</div>
						</div>
						
						<div class="grid_6 divider">
							
						</div>
						
						<div class="grid_6 subMenuItem"  id="sub_character">
							<div class="subMenuIcon">
								<img src="../images/submenu/character.png" />
							</div>
							
							<div style="margin-top:12px; margin-left:45px;">
								<font color="white"> 
								Character Management
								</font>
							</div>
						</div>
						
						<div class="grid_6 divider" >
							
						</div>
						
						<div class="grid_6 subMenuItem" id="sub_report">
							<div class="subMenuIcon">
								<img src="../images/submenu/report.png" />
							</div>
							
							<div style="margin-top:12px; margin-left:45px;">
								<font color="white"> 
									Send Report
								</font>
							</div>
						</div>
						
						<div class="grid_6 divider">
							
						</div>
						
						<div class="grid_6 subMenuItem" id="sub_donate">
							<div class="subMenuIcon">
								<img src="../images/submenu/donate.png" />
							</div>
							
							
							<div style="margin-top:12px; margin-left:45px;">
								<font color="white"> 
									Donate
								</font>
							</div>
						
						</div>
						
						<div class="grid_6 divider">
							
						</div>
						
						<div class="grid_6 subMenuItem"  id="sub_premium">
							<div class="subMenuIcon">
								<img src="../images/submenu/premium.png" />
							</div>
							
							<div style="margin-top:12px; margin-left:45px;">
								<font color="white"> 
								Upgrade to Premium
								</font>
							</div>
						</div>
						
						<div class="grid_6 divider">
							
						</div>
						
						<div class="grid_6 subMenuItem"  id="sub_logout">
							<div class="subMenuIcon">
								<img src="../images/submenu/logout.png" />
							</div>
							
							<a href="../../php/logout.php">
							<div style="margin-top:12px; margin-left:45px;">
								<font color="white"> 
								Log Out
								</font>
							</div>
							</a>
						</div>
					<?php
						}
						else //show login
						{
					?>
						<div class="grid_6">	
							<form id="log_user" method="post" action="../../php/login.php">
								Login
								<br>
								<table >
									<tr>
										<td >
											<input type="text" id="username_log" name="username" required="required" placeholder="Username" style="width:170px; "  tabindex="1" />
										</td>
										<td rowspan="2" >
											<input type="image" src="../images/login.png" width="50" height ="52" style="margin-left:2px;" tabindex="2"/>
										</td>
										
									</tr>
									
									<tr>
										<td >
											<input type="password" id="password_log" name="password" required="required" placeholder="Password" style="width:170px;" tabindex="1" />
										</td>
									</tr>
								</table>
								
							</form>
							&nbsp; &nbsp; &nbsp; <span id="regSubMenu" style="color:orange;cursor:pointer;"> Register </span> | Forgot Password?

						</div>
					<?php
						}
					?>
					
					<div class="grid_6" id="clockbox" style="margin-top: 20px; height:50px; background-color:white; margin-left:0px;" title="Server/In-Game Time. GMT+8:00">
					
					</div>
					
					<div class="grid_6" style="margin-top: 20px; margin-left:0px;" id="rules" title="It is mandatory to read and follow these rules. Read them all here.">
						<img src="../images/rules.gif" />
	
					</div>
					
					<div class="grid_6" style="margin-top: 20px; margin-left:0px;" id="premium">
						<img src="../images/premium.gif" />

					</div>
					
					<div class="grid_6" style="margin-top: 20px; margin-left:0px;" id="grow">
						<img src="../images/help.gif" />

					</div>
					
					<div class="grid_6" style="margin-top: 20px; margin-left:0px;">
						<img src="../images/review.gif" />
					</div>
					
					
					
				</div>
				
				
				
				<div class=" grid_12">
					<!-- THIS I WHERE THE NEWS THUMBNAILS ARe located-->
					<div id="tabs" class="tabs-bottom">
						<ul>
							<li><a href="#tabs-1" > Bring Your Guildmates</a></li>
							<li><a href="#tabs-2">Shopping Spree</a></li>
							<li><a href="#tabs-3">Magic 3 Lottery</a></li>
						</ul>
						<div id="tabs-1">
							<h4 style="color:white; background-color:orange; padding-left:5px;">
								Guild Transfer Bonus
							</h4>
							
							<div>
								<div style="width:110px; height: 120px; float:left; margin-right:15px; border:thin solid #000;">
									<img src="../images/thumbnail/big_thumb1.png" width="110" height="120"/>
									
								</div>
								
								<p align="justify" style="color:black;">
									Puff RO is a fresh,new and growing server. 
									As a way to bring in new players to our server,  
									we are giving away freebies for players who will 
									be transferring together with their guild. For 
									details and instructions, click here.
								</p>
							</div>
						</div>
						
						
						<div id="tabs-2">
							<h4 style="color:white; background-color:orange; padding-left:5px;">
								Shop-A-Holic's Weekend
							</h4>
							
							<div>
								<div style="width:110px; height: 120px; float:left; margin-right:15px; border:thin solid #000;">
									<img src="../images/thumbnail/big_thumb3.png" width="110" height="120"/>
									
								</div>
								
								<p align="justify" style="color:black;">
									Every week, the Puff RO Itemshoppe randomly selects 
									5 items from the item shoppe. Selected items will have 
									a 10% Discount. Premium Users will enjoy 15% discount 
									on selected items. The sale starts every Friday 
									12:00 AM - Sunday 11:59 PM.
								</p>
							</div>
						</div>
						
						
						<div id="tabs-3">
							<h4 style="color:white; background-color:orange; padding-left:5px;">
								Puff RO Custom Lottery
							</h4>
							
							<div>
								<div style="width:110px; height: 120px; float:left; margin-right:15px; border:thin solid #000;">
									<img src="../images/thumbnail/big_thumb2.png" width="110" height="120"/>
									
								</div>
								
								<p align="justify" style="color:black;">
									The lottery system will generate the winning 3 digit combination every 6 Hours. For instructions, click Here.
									<br><br>
									<?php if($acc_id != "")
										  {?>	
												<button id="lottery" style="color:orange;cursor:pointer;background:transparent;border:0px;padding:0">Click Here</button>to Place your Bet
									<?php }
										  else
										  {?>
										  
												Please <span id="login_first_lottery" style="color:orange;cursor:pointer"><u>Login</u></span> first before placing your bet!
									<?php		
										  } 
									?>
								</p>
								
								<div id="placeBet" style="display:none" title="Place your Bets!" >
								<i>Note: Combination is only numbers 1-10</i>
								<br/>
									Choose your Numbers: <input type="text" id="num1" style="width:23px" maxlength="2"/>
									&nbsp;
									<input type="text" id="num2" style="width:23px"  maxlength="2"/>
									&nbsp;
									<input type="text" id="num3" style="width:23px"  maxlength="2"/>
									<button id="random" style="color:orange;cursor:pointer;background:transparent;border:0px;"> Random? </button>
									<br/>
									Choose your Main Character: 
									<select  id="characters">
										<?php
												while($row = mysql_fetch_array($retrieveCharacter ))
												{?>
													<option value="<?php echo $row[0]?>"><?php echo $row[1]?></option>
										<?php	}
										?>
									</select>
									<br/>
									Place Your Bet: 
									<input type="text" id="bet" style="width:100px"/> <span id="bet_error" style="color:red;"></span>
								</div>
							</div>
						</div>
					</div>
					
					<div class="stripedivider">
					
					</div>
					
					<!-- THIS IS THE DYNAMIC CONTENT        dynamically load pages via javascript-->
					<div class=" dynamicContent" >
						
						
					</div>
				</div>
				<div class="grid_6 omega">
					<div class="grid_6 " id="serverStatus">
						<a>
							<?php 
							include("status.php"); 
							include("user_online.php");
							  ?>
							  
							<table style="margin-left:25px; margin-top:10px;" >
								<tr>
									<td width="150" style="color:white;">
										<span style="color:orange;"><b>Account</b></span> Server
									</td>
									
									<td width="80">
										<?php echo $acc_status; ?>
									</td>
								</tr>
								
								<tr>
									<td width="140" style="color:white;" >
										<span style="color:orange;"><b>Character</b></span> Server
									</td>
									
									<td>
										<?php echo $char_status; ?>
									</td>
								</tr>
								
								<tr>
									<td width="140" style="color:white;" align="right">
										<span style="color:orange;"><b>Map</b></span> Server
									</td>
									
									<td>
										<?php echo $map_status; ?>
									</td>
								</tr>
								
								<tr>
									<td width="140" style="color:white;">
										<span style="color:orange;"><b>Users</b></span> Online
									</td>
									
									<td style="color:#baff27;">
										<?php echo $usersonline; ?>
									</td>
								</tr>
								
							</table>
						</a>
					</div>
					
					<div class="grid_6 " id="guildStanding">
						
					</div>
					
					<div class="grid_6 " id="weekendSale">
						
					</div>
					
					<div class="grid_6 lottery" >
						
					</div>
					
					<iframe src="//www.facebook.com/plugins/likebox.php?href=https%3A%2F%2Fwww.facebook.com%2FPuffRo&amp;width=230&amp;height=258&amp;colorscheme=light&amp;show_faces=true&amp;border_color&amp;stream=false&amp;header=false" scrolling="no" frameborder="0" style="border:none; overflow:hidden; width:230px; height:258px; margin-top:6px;" allowTransparency="true">
						<!-- FACEBOOK -->
					</iframe>
					
				</div>
			</div>
		</div>
		<div  title="Donation Terms and Conditions" id="donateGuidelines" style="display:none;"> 
			
				&nbsp; &nbsp; &nbsp; &nbsp; Puff Ranarok Online runs by offering rewards in form of in-game items. Playing this game is absolutely free, however, the total operating costs and monthly maintenance are not easy on the pocket, especially with the type of quality equipment and bandwidth we use. We, on our own discretion, like to repay your generosity for helping us continue giving you services.<br /> <br />
				&nbsp; &nbsp; &nbsp; &nbsp;Puff Ragnarok Online will not refund any money that you already donated. Once you donate, you'll be very much appreciated for helping this server. 
				<b><font color="orange">However, since you are the one who's responsible for your account, we still reserve the right to punish you whenever you break a rule, and sanction you accordingly.</font></b> <br /> <br />
				-All the information you provided will be kept confidential which covers the usage and protection of your personal information (credit/debit card information, real name, addresses, etc.). For more information, please visit our payment processors' privacy policies which is incorporated in their respective websites.<br /> <br />
				-We will not be responsible if your reward items got hacked or scammed. We do not return items that are hacked or scammed.<br /><br />
				-No item refining nor special items will be given other than the list that we'll provide in our donation page. <br /> <br />
				-<b>Once donation items are bought, they cant be exchanged for a different item or Koin.</b> <br /> <br />
				-<b>Donations are non-refundable.</b> <br /> <br />
				-<b>You are responsible for your Koins. Any items purchased accidentally will not be entertained.</b> <br  /> <br />
				-<b>For money transfer donators, you will have to wait for 24-48hours before you can recieve your koins. Please give us time to process your donations. </b><br /> <br />
				-<b><font color="orange">When you donate, it is expected that you have agreed to the rules stated above. Failure to read the rules is not an excuse.</font></b> <br /> <br />
				
				<span id="donateProceed" style="color:orange;cursor:pointer;">
					Upon Reading and By Clicking 'Proceed', We Assume that you have Agreed to these Terms and Conditions
				</span>
			
				
				<br>
				<br>
		</div> 
		
		<div id="footer">
			<div align="center">
				<font>
					
				</font>
			</div>
		</div>
	</body>
	
</html>
