<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<script type="text/javascript" src="../../js/ascript.js"></script>
	</head>

	<body>
		<div style="color:white; " align="center" class="loadedPage">
			<br>
				My Account
			<br>
		</div>
		
		<div class="grid_12 divider">
			<?php
				session_start();
				include("../../php/connection_open.php");
				$accountID = $_SESSION['accountID'];
				
				$accountQuery  = "SELECT * FROM login WHERE account_id = '$accountID' ";
				$accountSQL = mysql_query($accountQuery);
				$accountResult = mysql_fetch_row($accountSQL);
				
			?>
		</div>
		
		<div class="form_holder loadedPage" style="width:470px;">
			<div align="center">
				<table style="color:white;">
					<tr>
						<td width="90">
							Username: 
						</td>
						
						<td width="240">
							<?php echo $accountResult[1]; ?>
						</td>
						
						<td>
							
						</td>
					</tr>
					
					
					<tr>
						<td width="90">
							Password: 
						</td>
						
						<td >
							***************
						</td>
						
						<td >
							<button id="cPassword" title="Change your password" style="color:orange;cursor:pointer;background:transparent;border:0">change</button>
						</td>
					</tr>
					
					
					<tr>
						<td>
							Email: 
						</td>
						
						<td >
							<?php echo $accountResult[4]; ?>
						</td>
						
						<td >
							<button id="cEmail" title="Change your email" style="color:orange;cursor:pointer;background:transparent;border:0">change</button>
						</td>
					</tr>
					
					
					<tr>
						<td>
							Credits: 
						</td>
						
						<td >
							<?php echo $accountResult[13]; ?>
						</td>
						
						<td>
                            <button id="acc_donate" title="Make a Donation" style="color:orange;cursor:pointer;background:transparent;border:0">donate</button>
						</td>
					</tr>
					
					
					
					<tr>
						<td>
							User Type: 
						</td>
						
						<td >
							<?php 
								if($accountResult[17] == 0)
								{
									echo "Default User";
								}
								
								else if ($accountResult[17] == 1)
								{
									echo "Premium User / VIP ";
								}
								
								else
								{
									echo "Game Master";
								}
								
							?>
						</td>
						
						<td >
                                 <button id="acc_premium" title="Upgrade to Premium" style="color:orange;cursor:pointer;background:transparent;border:0">upgrade</button>
						</td>
					</tr>
					
					<tr height="20">
					
					</tr>
					
					<tr>
						<td>
							Login Count: 
						</td>
						
						<td >
							<?php echo $accountResult[9]; ?>
						</td>
						
						<td>
						
						</td>
					</tr>
					
					
					<tr>
						<td>
							Last Login: 
						</td>
						
						<td >
							<?php echo $accountResult[10]; ?>
						</td>
						
						<td>
						
						</td>
					</tr>
					
					
					<tr>
						<td>
							Last IP used: 
						</td>
						
						<td >
							<?php echo $accountResult[11]; ?>
						</td>
						
						<td>
						
						</td>
					</tr>
					
				</table>
			</div>
		</div>
		
		<div id="changePassword" align="center" title="Change Password" style="display:none;">
        
            <table width="351" border="0" cellpadding="0" cellspacing="0">
              <tr>
                <th width="193" scope="row"><div align="left">Old Password:</div></th>
                <td width="148"><div align="center">
                  <input type="password" id="old_password"/>
                </div></td>
              </tr>
              <tr>
                <th scope="row"><div align="left">New Password:</div></th>
                <td><div align="center">
                  <input type="password" id="new_password"/>
                </div></td>
              </tr>
              <tr>
                <th scope="row"><div align="left">Confirm New Password:</div></th>
                <td><div align="center">
                  <input type="password" id="confirm_new_password"/>
                </div></td>
              </tr>
            </table>

	</div>
    <div id="changeEmail" align="center" title="Change Email" style="display:none;"> 
        <table width="247" border="0" cellpadding="0" cellspacing="0">
            <tr>
                <th width="100" scope="row"><div align="left">Old Email:</div></th>
                <td width="159"><input type="text" id="old_email"/></td>
            </tr>
            <tr>
                <th scope="row"><div align="left">New Email:</div></th>
                <td><input type="text" id="new_email"/></td>
            </tr>
        </table>
	</div>
	</body>
</html>