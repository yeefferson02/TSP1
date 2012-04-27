<?php
/* eAthena SQL Database Config */

####################DO NOT EDIT BELOW HERE########################


$link = mysql_connect($local, $db_user, $db_pass) or die(mysql_error());
@mysql_select_db($db_name,$link);

$query = "SELECT COUNT(*) as total FROM `char` WHERE online = '1'";
$result = mysql_query($query,$link);
mysql_close($link);

$arr = mysql_fetch_array($result);
$usersonline = $arr["total"];

/* Do NOT Edit Above Here */



?>