$(document).ready(function(){
	$('#acc_donate').click(function(){
		$("#donateGuidelines").dialog({ buttons: [
					{
					text: "Proceed",
					click: function() { 
							$(this).dialog("close"); 
							$('.dynamicContent').load('donate.php');
							$('html, body').animate({scrollTop: $('.dynamicContent').offset().top},1000);
						}
					},
					{
					text: "Cancel",
					click: function() { 
							$(this).dialog("close"); 
							docuemnt.location.href = 'index.php';
							
						}
					},
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
	
	$('#acc_premium').click(function(){
		document.location.href = '../pages/itemshoppe/index.php?shop=item&category=Premium';
	});
	
	$("#old_password").bind('blur',function(){
		if($("#old_password").val().length == 0)
		{
			alert("Please input fields");
		}
		else
		{
			$.ajax({
				type:'post',
				data:'old_password='+$("#old_password").val(),
				url: '../../php/checkPassword.php',
				success: function(data){
					if(data == 100)
					{	
						$("#old_password").css('background-color','#9F9');
						$("#match_error").text("");
					}
					else
					{
						$("#old_password").css('background-color','#FF7578');
						$("#old_password").focus();
						$("#old_password").val('');
						$("#match_error").text("Invalid password, Password doesn't exist!");
					}
				}
			});
		}
	});	
	
	$("#new_password").keyup(function(){
		var strongExp = new RegExp("^(?=.{8,})(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])(?=.*\\W).*$", "g");
		var medExp =  new RegExp("^(?=.{7,})(((?=.*[A-Z])(?=.*[a-z]))|((?=.*[A-Z])(?=.*[0-9]))|((?=.*[a-z])(?=.*[0-9]))).*$", "g");
		var weakExp =  new RegExp("(?=.{6,}).*", "g");
		
		if($("#new_password").val().length == 0)
		{
			$("#new_password").css('background-color','');
			$("#pass_str").text("");
		}
		else if($("#new_password").val().length > 8)
		{
			if($("#new_password").val().length  <= 16)
			{
				if(weakExp.test($("#new_password").val()))
				{
					$("#new_password").css('background-color','#BFBFBF');
					$("#pass_str").text("Weak!");
				}
				if(medExp.test($("#new_password").val()))
				{
					$("#new_password").css('background-color','#ECFA55');
					$("#pass_str").text("Moderate");
				}
				if(strongExp.test($("#new_password").val()))
				{
					$("#new_password").css('background-color','#9F9');
					$("#pass_str").text("Strong!");
				}
			}
			else
			{
				$("#new_password").attr('maxlength',17);
			}
		}
		else
		{
			$("#new_password").css('background-color','#FF7578');
			$("#pass_str").text("Must be more than 8 Characters!");
		}
	});
	$("#confirm_new_password").keyup(function(){
		if($("#confirm_new_password").val().length == 0)
		{
			$("#confirm_new_password").css('background-color','');
			$("#pass_str").text("");	
		}	
		else
		{
			if($("#confirm_new_password").val() == $("#new_password").val())
			{
				$("#confirm_new_password").css('background-color','#9F9');
				$("#pass_str").text("");
			}
			else
			{
				$("#confirm_new_password").css('background-color','#FF7578');
				$("#pass_str").text("New Passwords Doesn't Match!!");
			}
		}
	});

	$("#reset_pass_fields").click(function(){
		$("#old_password").val("");
		$("#old_password").css('background-color','');
		$("#new_password").val("");
		$("#new_password").css('background-color','');
		$("#confirm_new_password").val("");
		$("#confirm_new_password").css('background-color','');
		$("#match_error").text("");
		$("#pass_str").text("");
	});

	$('#cPassword').click(function(){
		$("#changePassword").dialog({ buttons: [
					{
					text: "Change",
					click: function() { 
							$.ajax({
								type:'post',
								data:{old_password:$("#old_password").val(),new_password:$("#new_password").val()},
								url: '../../php/changePassword.php',
								success: function(data){
									if(data == 100)
									{
										alert("Your password has been changed Successfully!");
									}
									else if(data == 500)
									{
										alert("Old password doesn't match!");
									}
									else if(data == 200)
									{
										alert("System Error!");
									}
								}
							});
							$(this).dialog("close"); 
							$('.dynamicContent').load('myAccount.php');							
						}
					},
					{
					text: "Cancel",
					click: function() { 
							$(this).dialog("close"); 						
						}
					},
				],
				modal: true,
				show:'fade',
				hide:'fade',
				height:'auto',
				width:370,
				maxWidth:500,
				maxHeight:600,
				resizable: false
		});
	});
	
	$("#old_email").blur(function(){
		if($("#old_email").val().length == 0)
		{
			$("#old_email_error").text("");
			$("#old_email").css('background-color','');
		}
		else
		{
			$.ajax({
				type:'post',
				data:'old_email='+$("#old_email").val(),
				url: '../../php/checkEmail.php',
				success: function(data){
					//alert(data);
					if(data == 505)
					{
						$("#old_email_error").text(" ");
						$("#old_email").css('background-color','#9F9');
					}
					else if(data==100)
					{
						$("#old_email").val("");
						$("#old_email_error").text("Email Doesn't Match!");
						$("#old_email").css('background-color','#FF7578');
						$("#old_email").focus();
						
					}
				}
			});
		}
	});
	
	$("#new_email").bind('keyup blur',function(){
		var emailExp = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;						
		if($("#new_email").val().length == 0)
		{
			$("#new_email_error").text("");
			$("#new_email").css('background-color','');
		}
		else
		{
			if(emailExp.test($("#new_email").val()))
			{
					$.ajax({
						type:'post',
						data:'old_email='+$("#new_email").val(),
						url: '../../php/checkEmail.php',
						success: function(data){
							//alert(data);
							if(data == 100)
							{
								$("#new_email_error").text(" ");
								$("#new_email").css('background-color','#9F9');
							}
							else if(data==505)
							{
								$("#new_email_error").text("Email already Exist!");
								$("#new_email").css('background-color','#FF7578');
							}
						}
					});
			}
			else
			{	
				$("#new_email_error").text("Invalid Email!");
				$("#new_email").css('background-color','#FF7578');
			}
		}
	});
	
	$("#reset").click(function(){
		$("#old_email").val("");
		$("#old_email").css('background-color','');
		$("#new_email").val("");
		$("#new_email").css('background-color','');
		$("#old_email_error").text("");
		$("#new_email_error").text("");
	});
	
	$('#cEmail').click(function(){
		$("#old_email").val("");
		$("#old_email").css('background-color','');
		$("#new_email").val("");
		$("#new_email").css('background-color','');
		$("#old_email_error").text("");
		$("#new_email_error").text("");
					
		$("#changeEmail").dialog({ buttons: [
					{
					text: "Change",
					click: function() { 
							$.ajax({
								type:'post',
								data:{old_email:$("#old_email").val(),new_email:$("#new_email").val()},
								url: '../../php/changeEmail.php',
								success: function(data){
									
									if(data == 100)
									{
										alert("Your Email has been Successfully changed!");
									}
									else if(data == 505)
									{
										alert("Old Email Doesn't Exist");
									}
									else if(data == 506)
									{
										alert("New Email Already Exist!");
									}
									else if(data == 200)
									{
										alert("System Error!"+data);
									}
								}
							});
							$('.dynamicContent').load('myAccount.php');
							$(this).dialog("close"); 	
							
						}
					},
					{
					text: "Cancel",
					click: function() { 
							$(this).dialog("close"); 						
						}
					},
				],
				modal: true,
				show:'fade',
				hide:'fade',
				height:'auto',
				width:300,
				maxWidth:500,
				maxHeight:600,
				resizable: false
		});
	});
});				