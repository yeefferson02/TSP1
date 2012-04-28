<?php
	session_start();
	error_reporting(0);
	
	$acc_id = $_SESSION['accountID'];
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<script type="text/javascript" src="../../js/charscript.js"></script>
	</head>

	<body>
		<div style="color:white; " align="center" class="loadedPage">
			<br>
				Character Management
			<br>
		</div>
		
		<div class="grid_12 divider">
			
		</div>
		
		<div class="form_holder loadedPage" style="color:white; width:470px;" align="justify" >
			<div style="margin:15px;">
				<table>
					<tr>
						<td width="120" style="color:orange;">
							<b>Name</b>
						</td>	
						
						<td width="60" style="color:orange;">
							<b>Level</b>
						</td>
						
						<td width="100"  style="color:orange;">
							<b>Class</b>
						</td>
						
						<td width="120" style="color:orange;">
							<b>Last Map </b>
						</td>
						
						<td>
						
						</td>
					</tr>
					<?php
						include('../../php/connection_open.php');
						
						
						$charQuery = "	SELECT * 
												FROM `char` 
												WHERE `account_id`=$acc_id  ";
					
						$charSQL = mysql_query($charQuery);
						
						while($charResult = mysql_fetch_row($charSQL))
						{
							$className = $charResult[4];
							switch($className)
							{
								case 0: $className = "Novice";
										break;
								case 1: $className = "Swordsman";
										break;
								case 2: $className = "Mage";
										break;
								case 3: $className = "Archer";
										break;
								case 4: $className = "Acolyte";
										break;
								case 5: $className = "Merchant";
										break;
								case 6: $className = "Thief";
										break;
								case 7: $className = "Knight";
										break;
								case 8: $className = "Priest";
										break;
								case 9: $className = "Wizard";
										break;
								case 10: $className = "Blacksmith";
										break;
								case 11: $className = "Hunter";
										break;
								case 12: $className = "Assassin";
										break;
								case 13: $className = "Knight";
										break;
								case 14: $className = "Crusader";
										break;
								case 15: $className = "Monk";
										break;
								case 16: $className = "Sage";
										break;
								case 17: $className = "Rogue";
										break;
								case 18: $className = "Alchemist";
										break;
								case 19: $className = "Bard";
										break;
								case 20: $className = "Dancer";
										break;
								case 21: $className = "Crusader";
										break;
								case 23: $className = "Super Novice";
										break;
								case 24: $className = "Gunslinger";
										break;
								case 25: $className = "Ninja";
										break;
								case 4001: $className = "Novice High";
										break;
								case 4002: $className = "High Swordsman";
										break;
								case 4003: $className = "High Magician";
										break;
								case 4004: $className = "High Archer";
										break;
								case 4005: $className = "High Acolyte";
										break;
								case 4006: $className = "High Merchant";
										break;
								case 4007: $className = "High Thief";
										break;
								case 4008: $className = "Lord Knight";
										break;
								case 4009: $className = "High Priest";
										break;
								case 4010: $className = "High Wizard";
										break;
								case 4011: $className = "Whitesmith";
										break;
								case 4012: $className = "Sniper";
										break;
								case 4013: $className = "Assassin Cross";
										break;
								case 4014: $className = "Lord Knight";
										break;
								case 4015: $className = "Paladin";
										break;
								case 4016: $className = "Champion";
										break;
								case 4017: $className = "Professor";
										break;
								case 4018: $className = "Stalker";
										break;
								case 4019: $className = "Creator";
										break;
								case 4020: $className = "Clown";
										break;
								case 4021: $className = "Gypsy";
										break;
								case 4022: $className = "Paladin";
										break;
								case 4023: $className = "Baby Novice";
										break;
								case 4024: $className = "Baby Swordman";
										break;
								case 4025: $className = "Baby Magician";
										break;
								case 4026: $className = "Baby Archer";
										break;
								case 4027: $className = "Baby Acolyte";
										break;
								case 4028: $className = "Baby Merchant";
										break;
								case 4029: $className = "Baby Thief";
										break;
								case 4030: $className = "Baby Knight";
										break;
								case 4031: $className = "Baby Priest";
										break;
								case 4032: $className = "Baby Wizard";
										break;
								case 4033: $className = "Baby Blacksmith";
										break;
								case 4034: $className = "Baby Hunter";
										break;
								case 4035: $className = "Baby Assassin";
										break;
								case 4036: $className = "Baby Knight";
										break;
								case 4037: $className = "Baby Crusader";
										break;
								case 4038: $className = "Baby Monk";
										break;
								case 4039: $className = "Baby Sage";
										break;
								case 4040: $className = "Baby Rogue";
										break;
								case 4041: $className = "Baby Alchemist";
										break;
								case 4042: $className = "Baby Bard";
										break;
								case 4043: $className = "Baby Dancer";
										break;
								case 4044: $className = "Baby Crusader";
										break;
								case 4045: $className = "Baby Super Novice";
										break;
								case 4046: $className = "Taekwon";
										break;
								case 4047: $className = "Star Gladiator";
										break;
								case 4048: $className = "Star Gladiator";
										break;
								case 4049: $className = "Soul Linker";
										break;

							}
							?>
								<tr>
									<td>
										<?=$charResult[3];?>
									</td>
									
									<td>
										<?=$charResult[5];?>
									</td>
									
									<td>
										<?=$className;?>
									</td>
									
									<td>
										<?php
											echo $charResult[38]."&nbsp;(".$charResult[39]."&nbsp;".$charResult[40].")";
										?>
									</td>
									
									<td>
										
										<button id="reset_chracter" title="Reset your Character" style="color:orange;cursor:pointer;background:transparent;border:0">Reset</button>
										
									</td>
								</tr>
							<?php
						}
						
						include('../../php/connection_close.php');
					?>
				</table>
				<br>
				<br>
			</div>
		</div>
		<div id="reset_panel" title="Reset Panel">
			<button id="reset_all">Reset All</button>
			<button id="reset_manually">Reset Manually</button>		
		</div>
	</body>
</html>