/*******************************/
/*Index/Main Script for PuffRO */
/*Code Version 2.0             */
/*Date: April 21, 2012         */
/*Property of: Inztig@teCodez  */
/*******************************/
$(document).ready(function(){
document.title = "Welcome To Puff RO";
$('.dynamicContent').load('news.php');
$('.lottery').load('lottery.php');

	$('#homeMenu').click(function(){
		document.title = "Welcome To Puff RO";
		$('.dynamicContent').load('news.php');
	});
	$('#serverInfoMenu').click(function(){
		$('.dynamicContent').load('serverInfo.php');
	});
	
	$('#itemShoppeMenu').click(function(){
		document.location.href = '../pages/itemshoppe/index.php';
	});
	$('#voteMenu').click(function(){
		$('.dynamicContent').load('vote.php');
		$('html, body').animate({scrollTop: $('.dynamicContent').offset().top},1000);
	});
	$('#downloadMenu').click(function(){
		$('.dynamicContent').load('download.php');
	});
	$('#registerButton').click(function(){
		$('.dynamicContent').load('register.php');
		$('html, body').animate({scrollTop: $('.dynamicContent').offset().top},1000);
		document.title = "Register";
	});
	$('#sub_account').click(function(){
		$('.dynamicContent').load('myAccount.php');
	});
	$('#sub_premium, #acc_premium').click(function(){
		document.location.href = '../pages/itemshoppe/index.php?shop=item&category=Premium';
	});
	$('#sub_character').click(function(){
		$('.dynamicContent').load('characterManagement.php');
	});
	$('#sub_report').click(function(){
		$('.dynamicContent').load('report.php');
	});	
	$('#regSubMenu').click(function(){
		$('.dynamicContent').load('register.php');
		$('html, body').animate({scrollTop: $('.dynamicContent').offset().top},1000);
		document.title = "Register";
	});
	$('#rules').click(function(){
		$('.dynamicContent').load('rules.php');
	});
	$('#premium').click(function(){
		$('.dynamicContent').load('premiumAccount.php');
	});
	$('#grow').click(function(){
		$('.dynamicContent').load('grow.php');
	});
	$('#thumb1').click(function(){
		$('.bigNewsThumbnail').load('thumbnail/thumb1.php');
	});
	$('#thumb2').click(function(){
		$('.bigNewsThumbnail').load('thumbnail/thumb2.php');
	});
	$('#thumb3').click(function(){
		$('.bigNewsThumbnail').load('thumbnail/thumb3.php');
	});
	
	$('#donateMenu, #sub_donate, #acc_donate').click(function(){
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
	
});