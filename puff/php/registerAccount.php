<?php
require_once('recaptchalib.php');
require('connection_open.php');
require_once('phpLibrary.php');
$privateKey = "6LchKs8SAAAAAGKgtppygacHwc0UDSqGFS3FNuNi";
$resp = recaptcha_check_answer ($privateKey,
                                $_SERVER["REMOTE_ADDR"],
                                $_POST["recaptcha_challenge_field"],
                                $_POST["recaptcha_response_field"]);
$username = stripslashes(sanitize($_POST['username']));	
$password = sanitize($_POST['password']);
$repeat_password = sanitize($_POST['repeat_password']);	
$email = strip_tags($_POST['email']);	
$gender = stripslashes(sanitize($_POST['gender']));	

	if($username != "" && $password != "" && $repeat_password != "" && $email != "")
	{
		if($gender != "0")
		{
			//echo "gender ok! ";
				$db_username = mysql_query("SELECT userid FROM login WHERE userid='$username'");
				$db_user_count = mysql_num_rows($db_username);
				if($db_user_count == 0)
				{
					//echo "username available ";
					$db_email = mysql_query("SELECT email from login where email='$email'");
					$db_email_count =  mysql_num_rows($db_email);
					
					if($db_email_count  == 0)
					{
						//echo "email available ";
						
						if($password == $repeat_password)
						{
							//echo "password match ";
							if($resp->is_valid)
							{
								//echo "recaptcha ok! ";
								$recorded_pass = $password;
								$password = md5($password);
								
								$insertInformation = mysql_query("INSERT INTO login(userid, user_pass, sex, email, credits,premium,name,know) VALUES('$username','$password','$gender','$email',0.00,0,0,0)");
								if($insertInformation)
								{
										echo 100;
								}
								else
								{
									echo mysql_error();
								}
									
							}
							else
							{
								echo 205; // recaptcha error
							}
						}
						else
						{
							echo 203; //password don't match
						}
					}
					else
					{
						echo 202; //email not available
					}
				}
				else
				{
					echo 201; //username not available
				}
		}
		else
		{
			echo 204; //provide gender
		}
	}
	else
	{
		echo 200; //input all fields
	}

require('connection_close.php');
?>