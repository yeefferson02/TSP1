<?php
session_start();
require('connection_open.php');
$acc_id = $_SESSION['accountID'];
echo $acc_id." This is Change Email";
require('connection_close.php');
?>
