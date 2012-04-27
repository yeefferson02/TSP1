<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<script type="text/javascript" src="../../js/rscript.js"></script>
		
	</head>

	<body>
		<div class="form_holder loadedPage" style="color:white; width:470px;" >
			<!-- THIS IS THE FIRST NEWS-->
			<div style="margin-left:15px;margin-right:15px; padding-bottom:1px;" align="justify">
				<?php
				include('../../php/connection_open.php');
				
				$newsQuery = "	SELECT * 
										FROM news 
										ORDER BY id DESC 
										LIMIT 0 ,1 ";
										
				$newsSQL = mysql_query($newsQuery);
				$newsResult = mysql_fetch_row($newsSQL);
				include('../../php/connection_close.php');
				?>
				<table>
					<tr>
						<td>
						
						</td>
						
						<td width="10">
						
						</td>
						<td width="340">
							<b style="color:orange;">
								<?=$newsResult[1]; ?>
							</b>
						</td>
						
						<td>
							<?=$newsResult[3]; ?>
						</td>
					</tr>
					<!-- MESSAGE BODY-->
					<tr>
						<td width="5"  bgcolor="#ffac29">
							
						</td>
						<td>
						
						</td>
						<td colspan="2">
							<?=$newsResult[2]; ?>
						</td>
					</tr>
				</table>
			</div>
		</div>
		
		
		<div class="stripedivider">
		
		</div>
		
		
		<!--2nd NEWS -->
		<div class="form_holder loadedPage" style="color:white; width:470px;" >
			<div style="margin-left:15px;margin-right:15px; padding-bottom:1px;" align="justify">
				<?php
				include('../../php/connection_open.php');
				
				$newsQuery = "	SELECT * 
										FROM news 
										ORDER BY id DESC 
										LIMIT 1,2 ";
										
				$newsSQL = mysql_query($newsQuery);
				$newsResult = mysql_fetch_row($newsSQL);
				include('../../php/connection_close.php');
				?>
				<table>
					<tr>
						<td>
						
						</td>
						
						<td width="10">
						
						</td>
						<td width="340">
							<b style="color:orange;">
								<?=$newsResult[1]; ?>
							</b>
						</td>
						
						<td>
							<?=$newsResult[3]; ?>
						</td>
					</tr>
					<!-- MESSAGE BODY-->
					<tr>
						<td width="5"  bgcolor="#ffac29">
							
						</td>
						<td>
						
						</td>
						<td colspan="2">
							<?=$newsResult[2]; ?>
						</td>
					</tr>
				</table>
			</div>
		</div>
		
		<div class="stripedivider">
		
		</div>
		
		
		<!--3rd NEWS -->
		<div class="form_holder loadedPage" style="color:white; width:470px;" >
			<div style="margin-left:15px;margin-right:15px; padding-bottom:1px;" align="justify">
				<?php
				include('../../php/connection_open.php');
				
				$newsQuery = "	SELECT * 
										FROM news 
										ORDER BY id DESC 
										LIMIT 2,3 ";
										
				$newsSQL = mysql_query($newsQuery);
				$newsResult = mysql_fetch_row($newsSQL);
				include('../../php/connection_close.php');
				?>
				<table>
					<tr>
						<td>
						
						</td>
						
						<td width="10">
						
						</td>
						<td width="340">
							<b style="color:orange;">
								<?=$newsResult[1]; ?>
							</b>
						</td>
						
						<td>
							<?=$newsResult[3]; ?>
						</td>
					</tr>
					<!-- MESSAGE BODY-->
					<tr>
						<td width="5"  bgcolor="#ffac29">
							
						</td>
						<td>
						
						</td>
						<td colspan="2">
							<?=$newsResult[2]; ?>
						</td>
					</tr>
				</table>
			</div>
		</div>
		
		<div class="stripedivider">
		
		</div>
		
		
		
		<!--4th NEWS -->
		<div class="form_holder loadedPage" style="color:white; width:470px;" >
			<div style="margin-left:15px;margin-right:15px; padding-bottom:1px;" align="justify">
				<?php
				include('../../php/connection_open.php');
				
				$newsQuery = "	SELECT * 
										FROM news 
										ORDER BY id DESC 
										LIMIT 3,4 ";
										
				$newsSQL = mysql_query($newsQuery);
				$newsResult = mysql_fetch_row($newsSQL);
				include('../../php/connection_close.php');
				?>
				<table>
					<tr>
						<td>
						
						</td>
						
						<td width="10">
						
						</td>
						<td width="340">
							<b style="color:orange;">
								<?=$newsResult[1]; ?>
							</b>
						</td>
						
						<td>
							<?=$newsResult[3]; ?>
						</td>
					</tr>
					<!-- MESSAGE BODY-->
					<tr>
						<td width="5"  bgcolor="#ffac29">
							
						</td>
						<td>
						
						</td>
						<td colspan="2">
							<?=$newsResult[2]; ?>
						</td>
					</tr>
				</table>
			</div>
		</div>
		
		<div class="stripedivider">
		
		</div>
		
		
		
		<!--5th NEWS -->
		<div class="form_holder loadedPage" style="color:white; width:470px;" >
			<div style="margin-left:15px;margin-right:15px; padding-bottom:1px;" align="justify">
				<?php
				include('../../php/connection_open.php');
				
				$newsQuery = "	SELECT * 
										FROM news 
										ORDER BY id DESC 
										LIMIT 4,5 ";
										
				$newsSQL = mysql_query($newsQuery);
				$newsResult = mysql_fetch_row($newsSQL);
				include('../../php/connection_close.php');
				?>
				<table>
					<tr>
						<td>
						
						</td>
						
						<td width="10">
						
						</td>
						<td width="340">
							<b style="color:orange;">
								<?=$newsResult[1]; ?>
							</b>
						</td>
						
						<td>
							<?=$newsResult[3]; ?>
						</td>
					</tr>
					<!-- MESSAGE BODY-->
					<tr>
						<td width="5"  bgcolor="#ffac29">
							
						</td>
						<td>
						
						</td>
						<td colspan="2">
							<?=$newsResult[2]; ?>
						</td>
					</tr>
				</table>
			</div>
		</div>
		
		
		
	</body>
</html>