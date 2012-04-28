<?php
	session_start();
	error_reporting(0);
	$username = $_SESSION['username'];
	$acc_id = $_SESSION['accountID'];
	include("../../../php/connection_open.php");
	
	$getCP = mysql_query("SELECT credits from login where account_id = $acc_id ");
	$getCP = mysql_fetch_array($getCP);
	$getRP = mysql_query("SELECT value from global_reg_value where account_id = $acc_id AND str = '#REWARDPOINTS' and type = 2");
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
								All
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
								All
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
				<div class="grid_18 iHeader">
					
				</div>
				
				<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
				<div class="iDivider" style="margin-top:15px;">
						
				</div>
					
				<div id="catergory_banner" style="height:20px; width:100%; background-color:#1d1d1d; color:white; border-radius:20px;" align="center">
					<?php echo $_GET['category'];?>
				</div>
				
				<div class="grid_18 iContent" id="mainContent">
				
					<?php
						if($_GET['mod'] == "success")
						{?>
							<h1> Thank you for Purchasing, Please come back Again! ^_^ </h1>
				  <?php }
						else
						{
							$shopSelect = $_GET['shop'];
							$categorySelect = $_GET['category'];
							
							if($_GET['page'] !='')
								$pageSelect = ($_GET['page']-1)*18;
							
							else
								$pageSelect = 0;
							if($categorySelect!="All")
							{
								$countSQL = "SELECT * FROM itemshoppe WHERE category='$categorySelect' AND shoppe='$shopSelect' ORDER BY name ASC";
								$itemSQL = "SELECT * FROM itemshoppe WHERE category='$categorySelect' AND shoppe='$shopSelect' ORDER BY name ASC LIMIT $pageSelect,18";
								
								$itemQuery = mysql_query($itemSQL);
							}
							
							else
							{
								$countSQL = "SELECT * FROM itemshoppe WHERE shoppe='$shopSelect' ORDER BY name ASC";
								$itemSQL = "SELECT * FROM itemshoppe WHERE shoppe='$shopSelect' ORDER BY name ASC LIMIT $pageSelect,18";
								$itemQuery = mysql_query($itemSQL);
							}
							while($itemResult = mysql_fetch_row($itemQuery))
							{
					?>
						<div class=" shoppeItemHolder" >
							<div align="center" class="itemLabel">
								<?php echo $itemResult[2]; ?>
							</div>
							
							<div class="itemImage" title="<?php echo $itemResult[3]; ?>">
							
							</div>
							
							<div class="itemDetails">
								Price: 
								<b>
									<?php 
										echo $itemResult[5];
										if($shopSelect == "reward")
											echo "  RP";
										else
											echo "  CP";
									?> 
								</b>
								
								<br>
								
								Stock: <b><?php echo $itemResult[4]; ?> </b>
								<br>
								<br>
								
								<?php 
									if($_SESSION['username'] != '' )
									{
								?>
									<a href="purchaseItemShoppe.php?id=<?php echo $itemResult[0]; ?>">
										<div>
											<button class="purchaseButton" align="center" style="cursor:pointer;">Purchase</button>
										</div>
									</a>
								<?php
									}
								?>
							</div>
						</div>
					<?php
						}
						
						$countQuery = mysql_query($countSQL);
						$count = mysql_num_rows($countQuery);
						
						if($count > 18 )
						{
					?>
						<div align="center" style="clear:both;">
							Page: 
							<?php
								
								$loopEnd  = $count/18;
								if($loopEnd%18 != 0)
								{
									$loopEnd++;
								}
								
								for($loop = 1 ; $loop <= $loopEnd; $loop++)
								{
							?>
								<a href="index.php?shop=<?php echo $shopSelect;?>&category=<?php echo $categorySelect;?>&page=<?php echo $loop; ?>" style="margin-right:15px;">
								
									<?php
										if($_GET['page']=='')
											$curPage = 1;
										
										else
											$curPage = $_GET['page'];
											
										if($loop == $curPage)
											echo "[<b>".$loop."</b>]";
											
										else
											echo $loop;
									?>
								</a>
							<?php
								}
							?>
						</div>
					<?php
						}
						}?>
				
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
