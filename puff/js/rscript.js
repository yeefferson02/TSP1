/*******************************/
/*Register Script for PuffRO   */
/*Code Version 2.2             */
/*Date: April 11, 2012         */
/*Property of: Inztig@teCodez  */
/*******************************/
$(document).ready(function(){
	$("#submit").attr('disabled','disabled');
	//$("#infoHead").text("Please Fill up the neccessary Infromation");
	//$("#infoHead").css('color','white');

	//Start of Pre-Processing
	$("#username").bind('keyup blur',function(){
		if($("#username").val().length == 0)
		{
			document.getElementById('username').style.backgroundColor="";
			$("#userError").text("");
			$("#submit").attr('disabled','disabled');
		}
		else if($("#username").val().length > 6)
		{
			if($("#username").val().length  <= 16)
			{
				document.getElementById('username').style.backgroundColor = "#9F9";
				$("#userError").text("Good");
				
			}
			else
			{
				document.getElementById('username').style.backgroundColor="#FF7578";	
				$("#userError").text("Less than 16");
				$("#username").attr('maxlength',17);
				$("#submit").attr('disabled','disabled');
				
			}
		}
		else 
		{
			document.getElementById('username').style.backgroundColor="#FF7578";
			$("#userError").text("Must be at least 6");
			$("#submit").attr('disabled','disabled');
			
		}
	});
	
	$("#password").keyup(function(){
		var strongExp = new RegExp("^(?=.{8,})(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])(?=.*\\W).*$", "g");
		var medExp =  new RegExp("^(?=.{7,})(((?=.*[A-Z])(?=.*[a-z]))|((?=.*[A-Z])(?=.*[0-9]))|((?=.*[a-z])(?=.*[0-9]))).*$", "g");
		var weakExp =  new RegExp("(?=.{6,}).*", "g");
		
		if($("#password").val().length == 0)
		{
			document.getElementById('password').style.backgroundColor="";
			$("#passStr").text("");
			$("#submit").attr('disabled','disabled');
		}
		else if($("#password").val().length > 8)
		{
			if($("#password").val().length  <= 16)
			{
				if(weakExp.test($("#password").val()))
				{
					document.getElementById('password').style.backgroundColor="#BFBFBF";
					$("#passStr").text("Weak!");
				}
				if(medExp.test($("#password").val()))
				{
					document.getElementById('password').style.backgroundColor="#ECFA55";
					$("#passStr").text("Moderate");
				}
				if(strongExp.test($("#password").val()))
				{
					document.getElementById('password').style.backgroundColor="#9F9";
					$("#passStr").text("Strong!");
				}
			}
			else
			{
				$("#password").attr('maxlength',17);
				$("#submit").attr('disabled','disabled');
			}
		}
		else
		{
			document.getElementById('password').style.backgroundColor="#FF7578";
			$("#passStr").text("Must be more than 8 Characters!");
			$("#submit").attr('disabled','disabled');
		}
	});
	
	$("#repeat_password").blur(function(){
			
		if($("#repeat_password").val() == 0)
		{
			document.getElementById('repeat_password').style.backgroundColor="#FF7578";
			$("#repeatPassError").text("Please Repeat Password");
			$("#submit").attr('disabled','disabled');
		}
		else
		{
			if($("#password").val() === $("#repeat_password").val())
			{	
				document.getElementById('repeat_password').style.backgroundColor = "#9F9";
				$("#repeatPassError").text("Password Match!");
			}
			else
			{
				document.getElementById('repeat_password').style.backgroundColor = "#FF7578";
				$("#repeatPassError").text("Password Doesn't Match!");
				$("#submit").attr('disabled','disabled');
			}
		}
	});
	
	$("#email").bind('blur keyup',function(){
	var emailExp = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
		
		if($("#email").val().length == 0)
		{
			document.getElementById('username').style.backgroundColor="";
			$("#emailError").text("");
			$("#submit").attr('disabled','disabled');
		}
		else if($("#email").val().length > 0)
		{
			if(emailExp.test($("#email").val()))
			{
				document.getElementById('email').style.backgroundColor = "#9F9";
				$("#emailError").text("Email Address Available");
				$("#submit").removeAttr('disabled');
			}
			else
			{
				document.getElementById('email').style.backgroundColor="#FF7578";
				$("#emailError").text("Invalid Email Address!");
				$("#submit").attr('disabled','disabled');
			}
		}
		else 
		{
			document.getElementById('email').style.backgroundColor="#FF7578";
			$("#emailError").text("Please Input Valid Email Address!");
			$("#submit").attr('disabled','disabled');
			
		}
	});
	
	//End of Pre-Processing

	
	
	//Post-Processing
	$("#submit").click(function(){
		var form_values = $("#registration_form").serialize();
		$.ajax({
			type:'post',
			url: '../../php/registerAccount.php',
			data: form_values,
			success: function(data){
				if(data == 200)
				{
					//alert(data);
					$("#infoHead").text("Please fill up fields which are marked (*)!");
					document.getElementById('infoHead').style.color="red";
					Recaptcha.reload();
				}
				else if (data == 201)
				{
					//alert(data);
					document.getElementById('username').style.backgroundColor="#FF7578";	
					$("#userError").text("Username not Available");
					Recaptcha.reload();
				}
				else if(data == 202)
				{
					//alert(data);
					document.getElementById('email').style.backgroundColor="#FF7578";	
					$("#emailError").text("Email not Available");
					Recaptcha.reload();
				}
				else if(data == 203)
				{
					//alert(data);
					document.getElementById('repeat_password').style.backgroundColor="#FF7578";	
					$("#repeatPassError").text("Password not Available");
					Recaptcha.reload();
				}
				else if(data == 204)
				{
					//alert(data);
					document.getElementById('repeat_password').style.backgroundColor="#FF7578";	
					$("#repeatPassError").text("Password Doesn't Match!");
					Recaptcha.reload();
				
				}
				else if(data == 205)
				{
					//alert(data);
					document.getElementById('recaptcha_response_field').style.backgroundColor="#FF7578";	
					$("#recapError").text("Please try Again!");
					Recaptcha.reload();
				}
				else if(data == 100)
				{
					//alert(data);
					$('.dynamicContent').html("");
					//$('.dynamicContent').load('success.php');
					
					alert("Success!");
				}
				else 
				{	
					alert(data);
				}
			}
		});
	});
	//**
	
	//Recaptcha
	Recaptcha.create("6LchKs8SAAAAANkHJ-FGqgW5YRiI9EC0lUj8xNpt", 'recaptcha', {
	 theme: "white",
	 lang: "en",
	 callback: Recaptcha.focus_response_field
	});
	
	
	$("#agreement").click(function(){
		$("#terms").dialog({ buttons: [
				{
				text: "Ok",
				click: function() { $(this).dialog("close"); }
				}
			],
			modal: true,
			show:'fade',
			hide:'fade',
			height:500,
			width:600,
			maxWidth:500,
			maxHeight:600,
			resizable: false
		});
		
	});
	
	
});

