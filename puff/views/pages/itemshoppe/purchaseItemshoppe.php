<?php
	session_start();
	error_reporting(0);
	$username = $_SESSION['username'];
	$acc_id = $_SESSION['accountID'];
	include("../../../php/connection_open.php");
	
	$getCP = mysql_query("SELECT credits from login where account_id = $acc_id ");
	$getCP = mysql_fetch_array($getCP);
	$getRP = mysql_query("SELECT value from global_reg_value where account_id = $acc_id AND str = '#REWARDPOINTS'");
	$getRP = mysql_fetch_array($getRP);
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		
		<link rel="stylesheet" type="text/css" href="../../../css/reset.css"/>
		<link rel="stylesheet" type="text/css" href="../../../css/text.css"/>
		<link rel="stylesheet" type="text/css" href="../../../css/960.css"/>
		<link rel="stylesheet" type="text/css" href="../../../css/custom.css"/>
		<link rel="stylesheet" type="text/css" href="../../../css/itemshoppe.css"/>
		<link rel="stylesheet" type="text/css" href="../../../css/font/customfont.css" charset="utf-8" />
		
		
		<script type="text/javascript" src="../../../js/jquery-1.7.2.min.js"></script>
		<script type="text/javascript" src="../../../js/itemshoppe.js"></script>
		<title>Puff RO Item Shoppe</title>
	</head>

	<body >
		<br>
		<div class="container_24 iGlobalContainer">
			<div class="grid_6" style=" height:900px;">
			
				<div class="iLogo grid_6">
				
				</div>
				
				<div class="iSidePanel grid_6">
				
					<div class="iDivider">
						
					</div>
					
					<?php 
						if($_SESSION['username'] != '') //if not logged in
						{
					?>
					<div class="panelHeading">
						<table style="margin:0px;">
							<tr>
								<td width="150">
									<b><i><?php echo $_SESSION['username']; ?></b></i>
								</td>
								
								<td>
									<a href="../../../php/logout.php">
										<div style="width:85px; height:17px; background-color:black; color:white;" align="center">
											Log Out
										</div>
									</a>
								</td>
							</tr>
						</table>
					</div>
					
					<div class="panelHeading">
						<table style="margin:0px;">
							<tr>
								<td width="150">
									Credit Points
								</td>
								
								<td >
									<b><i><?php echo $getCP[0]; ?> CP</b></i>
								</td>
							</tr>
						</table>
					</div>
					
					<div class="panelHeading">
						<table style="margin:0px;">
							<tr>
								<td width="150">
									Reward Points
								</td>
								
								<td>
									<b><i> <?php echo $getRP[0]; ?> RP</b></i>
								</td>
							</tr>
						</table>
					</div>
					
					<?php
						}
						
						else
						{
					?>
					<div class="panelHeading">
						<form action="../../../php/loginItemShoppe.php" method="post">
							<table>
								<tr>
									<td>
										<input type="text" name ="username" required="required" placeholder="Username" class="itemshoppeInputText" tabindex="1"/>
									</td>
									
									<td rowspan="2">
										<input type="image" src="../../images/login.png"name="submit" class="itemShoppeSubmit" tabindex="2">
									</td>
								</tr>
							
								<tr>
									<td>
										<input type="password" name ="password" required="required" placeholder="Password" class="itemshoppeInputText" tabindex="1"/>
									</td>
								</tr>
							</table>
						</form>
					</div>
					<?php
						}
					?>
					<div class="iDivider">
						
					</div>
					
					<div class="panelButton" id="view_history" style="cursor:pointer">
						<span id="view_history" style="cursor:pointer"> <b><i>View Purchase History</b></i> <span>
					</div>
					
					<div class="iDivider">
						
					</div>
					
					<div class="panelHeading">
						<b><i>Item Shoppe</b></i>
					</div>
					
					<ul>	
					
						<li>
							<a href="index.php?shop=item&category=All">
								<div class="panelButton">
								all
								</div>
							</a>
						</li>
						
						<li>
							<a href="index.php?shop=item&category=Consumables">
								<div class="panelButton">
								Consumables
								</div>
							</a>
						</li>
						
						<li>
							<a href="index.php?shop=item&category=Headgears">
								<div class="panelButton">
								Headgears
								</div>
							</a>
						</li>
						
						<li>
							<a href="index.php?shop=item&category=Armor">
								<div class="panelButton">
								Armors
								</div>
							</a>
						</li>
						
						<li>
							<a href="index.php?shop=item&category=Premium">
								<div class="panelButton">
								Premium User
								</div>
							</a>
						</li>
						
						<li>
							<a href="index.php?shop=item&category=RentalArmor">
								<div class="panelButton">
								Rental Armors
								</div>
							</a>
						</li>
						
						<li>
							<a href="index.php?shop=item&category=RentalArmor">
								<div class="panelButton">
									Sale Items
								</div>
							</a>
						</li>
					</ul>
					
					
					<div class="iDivider">
						
					</div>
					
					<div class="panelHeading">
						<b><i>Reward Shoppe</b></i>
					</div>
					
					<ul>	
						<li>
							<a href="index.php?shop=reward&category=All">
								<div class="panelButton">
								all
								</div>
							</a>
						</li>
						
						<li>
							<a href="index.php?shop=reward&category=Consumables">
								<div class="panelButton">
									Consumables
								</div>
							</a>
						</li>
						
						<li>
							<a href="index.php?shop=reward&category=Ammunition">
								<div class="panelButton">
									Ammunition
								</div>
							</a>
						</li>
						
						<li>
							<a href="index.php?shop=reward&category=Etc">
								<div class="panelButton">
									Etc.
								</div>
							</a>
						</li>
						
					</ul>
					
					<div class="iDivider">
						
					</div>
				</div>
			</div>
			
			<div class="grid_18 omega" style=" min-height:900px;">
				
				<a href="../">
					<div class="returnButton" align="center">
						<br>Return <br> to <br>Puff RO Website
					</div>
				</a>
				<div class="grid_18 iHeader" >
					
				</div>
				
				<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
				<div class="iDivider" style="margin-top:15px;">
						
				</div>
					
				<div style="height:20px; width:100%; background-color:#1d1d1d; color:white; border-radius:20px;" align="center">
					Purchase
				</div>
				
				<div class="grid_18 iContent" id="mainContent">
					<div style="min-height:100px; border:1px solid #cacaca; margin-left:150px; " class="grid_10">
						<?php 
							$itemid = $_GET['id'];
							$itemsql = "SELECT * FROM itemshoppe where itemshoppe_id=$itemid";
							$itemquery = mysql_query($itemsql);
							$itemresult = mysql_fetch_row($itemquery);
						?>
						
						<div class="itemImage" style="margin-left:165px;">
						
						</div>
						
						
						<div class="itemLabel" align="center" style="margin-left:10px; clear:both;">
						<span id="itemName"><?php echo $itemresult[2]."</span><span style='font-weight:bold; color:red;'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Price: ".$itemresult[5]?>
						
						</span>
						</div>
						
						<div style="min-width:200px; max-width:380px; word-wrap: break-word;" align="center">
						<?php echo $itemresult[3]; ?>
						</div>
						
						<br>
						
						<div style="margin-top:15px;">
						<span id="input_error" style="width:50px; margin-left:170px;color:red;">  </span>
						<br>
						<?php $category = mysql_query("SELECT category from itemshoppe where itemshoppe_id = $itemid");
							  $category = mysql_fetch_array($category); 
							  
							  if($category[0] != "premium" && $category[0] != "rentalArmor")
							  {
							   ?>
								<input type="text" id="amount" name="amount" maxlength="2" style="width:50px; margin-left:170px;" required="required" placeholder="Quantity" /> <span style="color:red; font-weight:bold;">Pcs. </span>
						<?php }
							  else
							  {?>
							  
							   <input type="hidden" id="amount" value="1" maxlength="2" readonly="readonly" />
						 <?php  } ?>
							<div>
								<button id="buy" value="<?php echo $_GET['id']; ?>" style="height:20px; width: 85px; background-color:white; box-shadow:0px 0px 10px #000; border-radius:4px; color:#494949; font-weight:bold; margin-left:170px; margin-top:5px; cursor:pointer;" align="center"> Buy </button>
							</div>
						</div>
						<br>
					</div>
				</div>
			</div>
		</div>
		
		<br>
		<div align="center">
			Copyright © 2007-2012 puffro.com. All Rights Reserved.
		</div>
		<br>
	</body>
	<?php
		include("../../../php/connection_close.php");
	?>
</html>
