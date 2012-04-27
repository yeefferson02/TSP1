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
	
	$('#cPassword').click(function(){
		$("#changePassword").dialog({ buttons: [
					{
					text: "Change",
					click: function() { 
							$.ajax({
								type:'post',
								url: '../../php/changePassword.php',
								success: function(data){
									alert(data);
								}
							});
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
				height:250,
				width:370,
				maxWidth:500,
				maxHeight:600,
				resizable: false
		});
	});
	
	$('#cEmail').click(function(){
		$("#changeEmail").dialog({ buttons: [
					{
					text: "Change",
					click: function() { 
							$.ajax({
								type:'post',
								url: '../../php/changeEmail.php',
								success: function(data){
									alert(data);
								}
							});
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
				height:190,
				width:300,
				maxWidth:500,
				maxHeight:600,
				resizable: false
		});
	});
});				