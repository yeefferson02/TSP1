/************************************/
/*Authenticating Script for PuffRO  */
/*Code Version 2.1                  */
/*Date: April 11, 2012              */
/*Property of: Inztig@teCodez       */
/************************************/
$(document).ready(function(){
$("#claim_gtop").attr('disabled','disabled');
$("#claim_xtreme").attr('disabled','disabled');
$("#claim_gamesites").attr('disabled','disabled');
$("#claim_toparena").attr('disabled','disabled');
$("#claim_ultimateserver").attr('disabled','disabled');
	 //When Page Loads.. TIME AUTHENTICATION
		$.ajax({
			type:'post',
			url: '../../php/detailsVote.php',
			success: function(jsonData){
				jsonData = $.parseJSON(jsonData);
				
				$("#credits").text(jsonData.credits);
				$("#rewards").text(jsonData.rewards);
				$("#username").text(jsonData.username);
					if(jsonData.last_vote_gtop != "1969-12-31 4:00:00 pm")
					{
						$("#last_vote_gtop").text(jsonData.last_vote_gtop);
					}

					if(jsonData.last_vote_xtreme != "1969-12-31 4:00:00 pm")
					{
						$("#last_vote_xtreme").text(jsonData.last_vote_xtreme);
					}
					
					if(jsonData.last_vote_gamesites != "1969-12-31 4:00:00 pm")
					{
						$("#last_vote_gamesites").text(jsonData.last_vote_gamesites);
					}	
					
					if(jsonData.last_vote_toparena != "1969-12-31 4:00:00 pm")
					{
						$("#last_vote_toparena").text(jsonData.last_vote_toparena);
					}	
					
					if(jsonData.last_vote_ultimateserver != "1969-12-31 4:00:00 pm")
					{
						$("#last_vote_ultimateserver").text(jsonData.last_vote_ultimateserver);
					}	
					
			
				$("#ip").text(jsonData.ip);
				
					if(jsonData.last_vote_gamesites != "1969-12-31 4:00:00 pm")
					{
						$("#last_vote").text(jsonData.last_vote_gamesites);
					}

					if(jsonData.status_gtop != "1969-12-31 4:00:00 pm")
					{
						$("#status_gtop").text(jsonData.status_gtop);
					}

					if(jsonData.status_xtreme != "1969-12-31 4:00:00 pm")
					{
						$("#status_xtreme").text(jsonData.status_xtreme);
					}
					
					if(jsonData.status_gamesites != "1969-12-31 4:00:00 pm")
					{
						$("#status_gamesites").text(jsonData.status_gamesites);
					}

					if(jsonData.status_toparena != "1969-12-31 4:00:00 pm")
					{
						$("#status_toparena").text(jsonData.status_toparena);
					}	

					if(jsonData.status_ultimateserver != "1969-12-31 4:00:00 pm")
					{
						$("#status_ultimateserver").text(jsonData.status_ultimateserver);
					}	
					
			}
		});

		$.ajax({
			type:'post',
			url: '../../php/authenticateVote.php',
			data: 'site='+$("#gtop").val(),
			success: function(data){
			
				if(data == 500)
				{
					//alert("IP Already Used!");
					$("#gtop").remove();
					$("#link_gtop").remove();
					$("#status_gtop").css('color','red');
					$("#status_gtop").text("IP Already Used! Please vote after 12 Hrs");
				}
				else if(data == 501)
				{
					//alert("Account Already Voted!");
					
					$("#gtop").remove();
					$("#link_gtop").remove();
					$("#status_gtop").css('color','red');
					$("#status_gtop").text("Account Already Voted! Please vote after 12 Hrs");
				}
				else if(data == 502)
				{
					alert("SQL ERROR");
					
				}
				else
				{
					$("#claim_gtop").hide();
					$("#status_gtop").text("Ready");
					$("#status_gtop").css('color','green');
					$("#gtop").removeAttr('disabled');
				}
			}
		});
	
		$.ajax({
			type:'post',
			url: '../../php/authenticateVote.php',
			data: 'site='+$("#xtreme").val(),
			success: function(data){
			
				if(data == 500)
				{
					//alert("IP Already Used!");
					$("#xtreme").remove();
					$("#link_xtreme").remove();
					$("#status_xtreme").css('color','red');
					$("#status_xtreme").text("IP Already Used! Please vote after 12 Hrs");
				}
				else if(data == 501)
				{
					//alert("Account Already Voted!");
					$("#xtreme").remove();
					$("#link_xtreme").remove();
					$("#status_xtreme").css('color','red');
					$("#status_xtreme").text("Account Already Voted! Please vote after 12 Hrs");
				}
				else if(data == 502)
				{
					alert("SQL ERROR");
					
				}
				else
				{
					$("#claim_xtreme").hide();
					$("#status_xtreme").text("Ready");
					$("#status_xtreme").css('color','green');
					$("#xtreme").removeAttr('disabled');
				}
			}
		});
		
		$.ajax({
			type:'post',
			url: '../../php/authenticateVote.php',
			data: 'site='+$("#gamesites").val(),
			success: function(data){
			
				if(data == 500)
				{
					//alert("IP Already Used!");
					$("#gamesites").remove();
					$("#link_gamesites").remove();
					$("#status_gamesites").css('color','red');
					$("#status_gamesites").text("IP Already Used! Please vote after 12 Hrs");
				}
				else if(data == 501)
				{
					//alert("Account Already Voted!");
					$("#gamesites").remove();
					$("#link_gamesites").remove();
					$("#status_gamesites").css('color','red');
					$("#status_gamesites").text("Account Already Voted! Please vote after 12 Hrs");
				}
				else if(data == 502)
				{
					alert("SQL ERROR");
				}
				else
				{
					$("#claim_gamesites").hide();
					$("#status_gamesites").text("Ready");
					$("#status_gamesites").css('color','green');
					$("#gamesites").removeAttr('disabled');
					
				}
			}
		});
		
		$.ajax({
			type:'post',
			url: '../../php/authenticateVote.php',
			data: 'site='+$("#toparena").val(),
			success: function(data){
			
				if(data == 500)
				{
					//alert("IP Already Used!");
					$("#toparena").remove();
					$("#link_toparena").remove();
					$("#status_toparena").css('color','red');
					$("#status_toparena").text("IP Already Used! Please vote after 12 Hrs");
				}
				else if(data == 501)
				{
					//alert("Account Already Voted!");
					$("#toparena").remove();
					$("#link_toparena").remove();
					$("#status_toparena").css('color','red');
					$("#status_toparena").text("Account Already Voted! Please vote after 12 Hrs");
				}
				else if(data == 502)
				{
					alert("SQL ERROR");
				}
				else
				{
					$("#claim_toparena").hide();
					$("#status_toparena").text("Ready");
					$("#status_toparena").css('color','green');
					$("#toparena").removeAttr('disabled');
					
				}
			}
		});
		
		$.ajax({
			type:'post',
			url: '../../php/authenticateVote.php',
			data: 'site='+$("#ultimateserver").val(),
			success: function(data){
			
				if(data == 500)
				{
					//alert("IP Already Used!");
					$("#ultimateserver").remove();
					$("#link_ultimateserver").remove();
					$("#status_ultimateserver").css('color','red');
					$("#status_ultimateserver").text("IP Already Used! Please vote after 12 Hrs");
				}
				else if(data == 501)
				{
					//alert("Account Already Voted!");
					$("#ultimateserver").remove();
					$("#link_ultimateserver").remove();
					$("#status_ultimateserver").css('color','red');
					$("#status_ultimateserver").text("Account Already Voted! Please vote after 12 Hrs");
				}
				else if(data == 502)
				{
					alert("SQL ERROR");
				}
				else
				{
					$("#claim_ultimateserver").hide();
					$("#status_ultimateserver").text("Ready");
					$("#status_ultimateserver").css('color','green');
					$("#ultimateserver").removeAttr('disabled');
					
				}
			}
		});

	$("#gtop").click(function(){
		$("#gtop").attr('disabled','disabled');
		$("#gtop").remove();
		$("#link_gtop").remove();
	});
	
	$("#xtreme").click(function(){
		//alert($("#xtreme").text());
		$("#xtreme").attr('disabled','disabled');
		$("#xtreme").remove();
		$("#link_xtreme").remove();
	});
	
	$("#gamesites").click(function(){
		//alert($("#gamesites").text());
		$("#gamesites").attr('disabled','disabled');
		$("#gamesites").remove();
		$("#link_gamesites").remove();
	});
	
	$("#toparena").click(function(){
		//alert($("#toparena").text());
		$("#toparena").attr('disabled','disabled');
		$("#toparena").remove();	
		$("#link_toparena").remove();
	});
	
	$("#ultimateserver").click(function(){
		$("#ultimateserver").attr('disabled','disabled');
		$("#ultimateserver").remove();
		$("#link_ultimateserver").remove();
	});
	
		
	$("#vote").click(function(){
		$("#vote_rules").dialog({ 
			buttons: [
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
	
	$("#instructions").click(function(){
		$("#vote_instructions").dialog({ 
			buttons: [
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
		
	$("#login_first_vote").click(function(){
		$("#log_user").focus();
		$("#username_log").focus();
	});
	
});