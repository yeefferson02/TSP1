<?php 
session_start();
//error_reporting(0);
include("../../../php/connection_open.php");
$acc_id = $_SESSION['accountID'];
$purchaseHistory = mysql_query("SELECT date,item_name,quantity,status,price,p_history_item_id from purchase_history where account_id=$acc_id") or die(mysql_error());
?>
<html>
<head>
</head>
<body>
Search: <input type="text" id="search" />
<div style="height:550px; padding:0; overflow:scroll">
<table width="699" border="2">
  <tr color="grey">
    <th width="211" scope="col"><strong>Date</strong></th>
    <th width="155" scope="col"><strong>Item Name</strong></th>
    <th width="67" scope="col"><div align="center"><strong>Quantity</strong></div></th>
    <th width="45" scope="col"><div align="center"><strong>Price</strong></div></th>
    <th width="49" scope="col"><div align="center"><strong>Total</strong></div></th>
    <th width="130" scope="col"><div align="center"><strong>Status</strong></div></th>
  </tr>
<?php while($row = mysql_fetch_array($purchaseHistory))
{?>
  <tr>
   <td><?php echo $row[0]; ?></td>
   <td><?php echo $row[1]; ?></td>
   <td><div align="center"><?php echo $row[2]; ?></div></td>
   <td><div align="center"><?php echo $row[4]; $total = $row[4] * $row[2]; ?></div></td>
   <td><div align="center"><?php echo $total; ?></div></td>
   <td><div align="center">
     <?php
			 if($row[3] == 1) 
			 {
				echo 'Reedemable'; 
			 }
			 else if($row[3] == 2)
			 {
				echo 'Activated';
			 } 
			 else
			 {
				echo "Redeemed";
			 }?>
   </div></td>
  </tr>
<?php } ?>
</table>
</div>
</body>
</html>
<?php include("../../../php/connection_close.php"); ?>