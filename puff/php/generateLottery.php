<?php
require('connection_open.php');
require('phpLibrary.php');
date_default_timezone_set('US/Pacific'); 
$time = time();
$next_time = $time + (6*60*60);

$check_expiry = mysql_query("SELECT lot_val from lottery where description = 'expiry'") or die(mysql_error());
$check_expiry = mysql_fetch_array($check_expiry);

$num_1 = mysql_query("SELECT lot_val from lottery where description = 'num1'")or die(mysql_error());
$num_2 = mysql_query("SELECT lot_val from lottery where description = 'num2'")or die(mysql_error());
$num_3 = mysql_query("SELECT lot_val from lottery where description = 'num3'")or die(mysql_error());
$date_drawn = mysql_query("SELECT lot_val from lottery where description = 'date_drawn'")or die(mysql_error());
$expiry = mysql_query("SELECT lot_val from lottery where description = 'expiry'")or die(mysql_error());

if($check_expiry[0] < $time)
{	
	$num1=0;
	$num2=0;
	$num3=0;

	$num1=rand(1,10);
	$num2=rand(1,10);
	$num3=rand(1,10);

	while($num2==$num1)
	{
		$num2=rand(1,10);
	}

	while($num3==$num1 || $num3==$num2)
	{
		$num3=rand(1,10);
	}	
	
		if($num_1 && $num_2 && $num_3)
		{
			$num_1 = mysql_fetch_array($num_1);
			$num_2 = mysql_fetch_array($num_2);
			$num_3 = mysql_fetch_array($num_3);
			$combination = $num_1[0].$num_2[0].$num_3[0];
			$check_combi = mysql_query("SELECT account_id,number_combination,char_id,bet from lottery_bets where number_combination = $combination")or die(mysql_error());
			$count_combi = mysql_num_rows($check_combi);
				
				if($check_combi && $count_combi >= 1)
				{	
					while($row = mysql_fetch_array($check_combi))
					{
						if($row[1] == $combination && $row[2] != 0 )
						{
							$updateZeny = mysql_query("update `char` set zeny = zeny + $row[3]*3 where char_id = $row[2]") or die(mysql_error());
						}
					}
				}
				
				//$clearLottery_login = mysql_query("UPDATE login set number_combination = 0, bet = 0, main_char = 0, bet_count = 0") or die(mysql_error());
				$clearLottery_lottery_bets= mysql_query("TRUNCATE lottery_bets") or die(mysql_error());
				$clearLottery_lottery = mysql_query("UPDATE lottery set lot_val = 0") or die(mysql_error());
				
				//GENERATE NEW COMBINATION
				$updateLottery_num1 = mysql_query("UPDATE lottery set lot_val = $num1 where description = 'num1'")or die(mysql_error());
				$updateLottery_num2 = mysql_query("UPDATE lottery set lot_val = $num2 where description = 'num2'")or die(mysql_error());
				$updateLottery_num3 = mysql_query("UPDATE lottery set lot_val = $num3 where description = 'num3'")or die(mysql_error());
				$updateLottery_drawn = mysql_query("UPDATE lottery set lot_val = $time where description = 'date_drawn'")or die(mysql_error());
				$updateLottery_expiry = mysql_query("UPDATE lottery set lot_val = $next_time where description = 'expiry'")or die(mysql_error());
				
				
				$numbers = array("num1"=>$num1,"num2"=>$num2,"num3"=>$num3,"date_drawn"=>date("F d, Y, l g:i a",$time),"next_draw"=>date("F d, Y, l g:i a",$next_time),"status"=>1);
				
				
				echo json_encode($numbers);
				/*if($updateLottery_num1 && $updateLottery_num2 && $updateLottery_num3 && $updateLottery_expiry )
				{
					echo "ok!";
				}
				else
				{
					echo $updateLottery_num1.$updateLottery_num2.$updateLottery_num3.$updateLottery_expiry;
				}*/
		}
		else
		{
			echo $num_1;
			echo "\n".$num_2;
			echo "\n".$num_3;
		}	
}
else
{
	$num_1 = mysql_fetch_array($num_1);
	$num_2 = mysql_fetch_array($num_2);
	$num_3 = mysql_fetch_array($num_3);
	$date_drawn = mysql_fetch_array($date_drawn);
	$expiry = mysql_fetch_array($expiry);
	
	$numbers = array("num1"=>$num_1[0],"num2"=>$num_2[0],"num3"=>$num_3[0],"date_drawn"=>date("F d, Y, l g:i a",$date_drawn[0]),"next_draw"=>date("F d, Y, l g:i a",$expiry[0]),"status"=>0);
	
	echo json_encode($numbers);
}

require('connection_close.php');
?>