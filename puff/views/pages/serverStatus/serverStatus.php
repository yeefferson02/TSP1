<?php
include("../../php/connection_open.php");
include("status.php"); 
include("user_online.php");
?>
<html>
<head>
</head>
<body>
<br />
<font color="#FFFFFF">
<table width="194">
	<tr>
    	<td width="135">Login Server:
        <td width="47"><?php echo $acc_status; ?>
    </tr>
    
    <tr>
    	<td height="15">
        <td>
        <td>
    </tr>
    
    <tr>
    	<td>Character Server:
        <td><?php echo $char_status; ?>
    </tr>
    
    <tr>
    	<td height="15">
        <td>
        <td>
    </tr>
    
    <tr>
    	<td>Map Server:
        <td><?php echo $map_status; ?>
    </tr>
    
    <tr>
    	<td height="15">
        <td>
        <td>
    </tr>
    
    <tr>
    	<td>Players Online:
        <td><?php echo "<font color='#33FF33'>".$usersonline."</font>"; ?>
    </tr>
		
</table>
</font>
<br />
</body>
</html>
<?php
include(".../../../php/connection_close.php"); 
?>