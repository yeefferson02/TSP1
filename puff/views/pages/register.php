<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<script type="text/javascript" src="../../js/rscript.js"></script>
		
	</head>

	<body>
		<div style="color:white; " align="center" class="loadedPage">
			<br>
				Register
			<br>
		</div>
		
		<div class="grid_12 divider">
			
		</div>
		<div class="form_holder loadedPage" style="width:470px; ">
			<form id="registration_form">
				<table>
					<tr>
						<td align="right" style="padding-top:6px;">
							<p style="color:#ffffff;">Username <font color="red">*</font> &nbsp;</p>
						</td>
						<td colspan="2">
							<input type="text" name="username" class="inputText" id="username"/>
							<span style="color:white" id="userError"> </span>
						</td>
						
					</tr>
					
					<tr>
						<td align="right" style="padding-top:6px;">
							<p style="color:#ffffff;">Password <font color="red">*</font> &nbsp;</p>
						</td>
						<td colspan="2">
							<input type="password" name="password"  class="inputText" id="password"/>
							<span  style="color:white"id="passStr"> </span>
						</td>
					</tr>
					
					<tr>
						<td align="right" style="padding-top:6px;">
							<p style="color:#ffffff;">Repeat Password <font color="red">*</font>&nbsp;</p>
						</td>
						<td colspan="2">
							<input type="password" name="repeat_password"  class="inputText" id="repeat_password"/>
							<span style="color:white" id="repeatPassError"> </span>
						</td>
					</tr>
					
					<tr>
						<td align="right" style="padding-top:6px;">
							<p style="color:#ffffff;">Email Address <font color="red">*</font> &nbsp;</p>
						</td>
						<td colspan="2">
							<input type="text" name="email" class="inputText" id="email"/>
							<span style="color:white" id="emailError"> </span>
						</td>
					</tr>
					
					<tr>
						<td align="right" style="padding-top:6px;">
							<p style="color:#ffffff;">Gender <font color="red">*</font> &nbsp;</p>
						</td>
						<td  align="center">
							<select name="gender" style="width:150px; height: 25px; margin-left:50px;" id="gender" >
								<option disabled="disabled" selected="selected" value="0" >Select Gender.. </option>
								<option value="M"> Male </option>
								<option value="F"> Female </option>
							</select>
							<span style="color:white" id="genderError"> </span>
						</td>
					</tr>
					
					<tr>
						<td align="right" style="padding-top:6px;color:#ffffff;" colspan="2">
							By Clicking "Register", You agree to the <a style="color:#03F;cursor:pointer;" id="agreement"> Terms and Agreement </a>
						</td>
						
					</tr>
					<tr>
						<td colspan="3" >
							<div id="recaptcha" align="center"> </div>
							<span style="color:white" id="recapError"> </span>
						</td>
					</tr>
				</table>
			</form>
				<button id="submit"> Register </button>
		</div>
		
		<div id="terms" title="Terms and Agreements" class="loadedPage" > Agreement! </div>
	</body>
</html>