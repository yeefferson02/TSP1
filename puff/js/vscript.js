/*******************************/
/*Voting Script for PuffRO     */
/*Code Version 2.0             */
/*Date: April 11, 2012         */
/*Property of: Inztig@teCodez  */
/*******************************/

$(document).ready(function(){
	var param = getParameters();
	
		if(param.mod_do == "vote" && param.mod_site == "gtop")
		{
			$("#vote_site").attr('src','http://www.gtop100.com/in.php?site=70653');
			setTimeout(function(){
					$.ajax({
						type:'post',
						url: '../../php/processVote.php',
						data:'site='+param.mod_site,
						success: function(jsonData){
					
							if(jsonData == 500)
							{
								$("#status").text("IP Already Used!");
								
							}
							else if(jsonData == 501)
							{
								$("#status").text("Account Already Voted!");
								
							}
							else if(jsonData == 502)
							{
								alert("SQL ERROR");
								
							}
							else
							{
								//alert(jsonData);
								$("#status").text(jsonData);
							}
						}
					});
			},5000); 
			
		}
		else if(param.mod_do == "vote" && param.mod_site == "xtreme")
		{
			$("#vote_site").attr('src','http://www.xtremetop100.com/in.php?site=1132332527');
			setTimeout(function(){
				$.ajax({
					type:'post',
					url: '../../php/processVote.php',
					data: 'site='+param.mod_site,
					success: function(jsonData){
					
						if(jsonData == 500)
						{
							$("#status").text("IP Already Used!");
							
						}
						else if(jsonData == 501)
						{
							$("#status").text("Account Already Voted!");
							
						}
						else if(jsonData == 502)
						{
							alert("SQL ERROR");
							
						}
						else
						{
							//alert(jsonData);
							$("#status").text(jsonData);						
						}
					}
				});
			},5000);
		}
		else if(param.mod_do == "vote" && param.mod_site == "gamesites")
		{
			$("#vote_site").attr('src','http://www.gamesites200.com/ragnarok/in.php?id=25672');
			setTimeout(function(){
				$.ajax({
					type:'post',
					url: '../../php/processVote.php',
					data: 'site='+param.mod_site,
					success: function(jsonData){
				
						if(jsonData == 500)
						{
							$("#status").text("IP Already Used!");
							
						}
						else if(jsonData == 501)
						{
							$("#status").text("Account Already Voted!");
							
						}
						else if(jsonData == 502)
						{
							alert("SQL ERROR");
							
						}
						else
						{
							//alert(jsonData);
							$("#status").text(jsonData);						
						}
					}
				});
			},5000);
		}
		else if(param.mod_do == "vote" && param.mod_site == "toparena")
		{
			$("#vote_site").attr('src','http://www.top100arena.com/in.asp?id=76429');
			setTimeout(function(){
				$.ajax({
					type:'post',
					url: '../../php/processVote.php',
					data: 'site='+param.mod_site,
					success: function(jsonData){
					
						if(jsonData == 500)
						{
							$("#status").text("IP Already Used!");
							
						}
						else if(jsonData == 501)
						{
							$("#status").text("Account Already Voted!");
							
						}
						else if(jsonData == 502)
						{
							alert("SQL ERROR");
							
						}
						else
						{
							//alert(jsonData);
							$("#status").text(jsonData);						
						}
					}
				});
			},5000);
		}
		else if(param.mod_do == "vote" && param.mod_site == "ultimateserver")
		{
			$("#vote_site").attr('src','http://www.ultimateprivateservers.com/ragnarok-online/index.php?do=votes&id=197');
			setTimeout(function(){
				$.ajax({
					type:'post',
					url: '../../php/processVote.php',
					data: 'site='+param.mod_site,
					success: function(jsonData){
					
						if(jsonData == 500)
						{
							$("#status").text("IP Already Used!");
							
						}
						else if(jsonData == 501)
						{
							$("#status").text("Account Already Voted!");
							
						}
						else if(jsonData == 502)
						{
							alert("SQL ERROR");
							
						}
						else
						{
							//alert(jsonData);
							$("#status").text(jsonData);						
						}
					}
				});
			},5000);
		}
	
});