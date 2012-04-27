<?php 
session_start();
error_reporting(0);
require('../../../php/connection_open.php');
$acc_id = $_SESSION['accountID'];
$retrieveCharacter = mysql_query("select char_id,name from `char` where account_id = $acc_id");
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<script type="text/javascript" src="../../js/lscript.js"></script>
		
	</head>

	<body>
		<div>
			<div style="float:left; margin-left:15px; margin-top:22px; border:4px dashed #fff;">
				<img src="../images/thumbnail/big_thumb2.png" />
			</div>
			
			<div style="margin-left:20px;">
				<br>
				<p style="color:white; font-size:20px;" >
					Magic-4 Lottery
				</p>
				<p style="color:white;">
					No one has won the lottery since 09/09/09.
					<br>
					Grand prize is now : 15,000,000 Zeny
					<br>
					<br>
					How to play Magic-4 Lottery?
					<br>
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
			</div>
		</div>
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
	</body>
</html>
<?php require('../../../php/connection_close.php');?>