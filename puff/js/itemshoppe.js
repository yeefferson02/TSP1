// JavaScript Document
$(document).ready(function(){
	
	$("#amount").keyup(function(){
		if(isNaN($("#amount").val()))
		{
			$("#buy").attr('disabled','disabled');
			$("#amount").css('background-color','#FF7578');
		}
		else
		{
			$("#amount").css('background-color','');
			$("#buy").removeAttr('disabled');
		}
	});
	
		$("#buy").click(function(){
			if($("#amount").val().length >= 1 && $("#amount").val() >= 1 )
			{
				$.ajax({
					type:'post',
					url: '../../../php/checkPoints.php',
					data:{id:$("#buy").val(),amount:$("#amount").val()},
					success: function(error){
						if(error == 101)
						{
							var x = confirm("Do you really want to purchase "+$("#amount").val()+" pcs of "+$("#itemName").text()+"?");
							if(x)
							{
								$.ajax({
									type:'post',
									url: '../../../php/itemShoppe.php',
									data:{id:$("#buy").val(),amount:$("#amount").val()},
									success: function(info){
											alert(info);
											//$("#mainContent").load('history.php');
											document.location.href = 'index.php?mod=success';
										}
								});
							}//end of confirm
						}
						else if(error == 502)
						{
							alert("Not enough stocks Left!");
						}
						else if(error == 505)
						{
							alert("You dont have enough Credit Points!");
						}
						else if(error == 506)
						{
							alert("You dont have enough Reward Points!");
						}
						else if(error == 507)
						{
							alert("Numbers only Please!");
						}
						else
						{
							alert(error);
						}
					}
				});
				
			}
			else
			{
				alert("Please input Number of Pcs!");
			}
		});
	
	$("#view_history").click(function(){
		$("#catergory_banner").text("Purchase History");
		$("#mainContent").load('history.php');
	});

});