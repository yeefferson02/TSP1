/*******************************/
/*Lottery Script for PuffRO   */
/*Code Version 2.0             */
/*Date: April 19, 2012         */
/*Property of: Inztig@teCodez  */
/*******************************/
$(document).ready(function(){
	$.ajax({
			type:'post',
			url: '../../php/generateLottery.php',
			success: function(numbers){

				numbers = $.parseJSON(numbers);
				
					if(numbers.status == 1)
					{
						$("#date_drawn").text(numbers.date_drawn);
						$("#first").text(numbers.num1);
						$("#second").text(numbers.num2);
						$("#third").text(numbers.num3);
						$("#status").text(numbers.next_draw);
					}
					else if(numbers.status == 0)
					{
						$("#date_drawn").text(numbers.date_drawn);
						$("#status").text(numbers.next_draw);
						$("#first").text(numbers.num1);
						$("#second").text(numbers.num2);
						$("#third").text(numbers.num3);
						$("#next_draw").text(numbers.next_draw);
					}
			}
	});
	
	$("#bet").bind('keyup blur',function(){
		$.ajax({
			type:'post',
			url: '../../php/checkZenyAccount.php',
			data: {bet:$("#bet").val(),mainChar:$("#characters").val()},
			success: function(info){
				if(info == 501)
				{
					//alert("invalid..not enough zeny");
					$("#bet").val("");
					$("#bet_error").text("Not enough Zeny!");
				}
				else if(info == 502)
				{
					//alert("Invalid Bet!.. Integer only");
					$("#bet").val("");
					$("#bet_error").text("Numbers only");
				}
				else if(info == 503)
				{
					$("#bet_error").text("At least 10,000z");
				}
				else
				{
					$("#bet_error").text("");
					//alert("ok");
				}
			}
		});
	});
	
	$("#num1,#num2,#num3").bind('keyup blur',function(){
		var a = $("#num1").val();
		var b = $("#num2").val();
		var c = $("#num3").val();
		
		if($("#num1").val() > 10)
		{
			$("#num1").val("");
		}

		if($("#num2").val() > 10)
		{
			$("#num2").val("");
		}
		
		if($("#num3").val() > 10)
		{ 
			$("#num3").val("");
		}
		
		if((a==b) && (b==c) && (a==c))
		{
			$("#num1").val("");
			$("#num2").val("");
			$("#num3").val("");
		}
	});
	
	$("#random").click(function(){
		var num1=0;
		var num2=0;
		var num3=0;

		num1=Math.floor((Math.random()*10)+1);
		num2=Math.floor((Math.random()*10)+1);
		while(num2==num1)
		{
		num2=Math.floor((Math.random()*10)+1);
		}

		num3=Math.floor((Math.random()*10)+1);
		while(num3==num1 || num3==num2)
		{
		num3=Math.floor((Math.random()*10)+1);
		}
		
		$("#num1").val(num1);
		$("#num2").val(num2);
		$("#num3").val(num3);

	});
	
	$("#lottery").click(function(){
		$("#num1").val("");
		$("#num2").val("");
		$("#num3").val("");
		$("#bet").val("");
		$("#bet_error").text("");
		$("#placeBet").dialog({ 
			buttons: [
				{
				text: "Ok",
				click: function() { 
							$.ajax({
								type:'post',
								url: '../../php/processLottery.php',
								data: {num1:$("#num1").val(),num2:$("#num2").val(),num3:$("#num3").val(),bet:$("#bet").val(),mainChar:$("#characters").val()},
								success: function(numbers){						
										//alert(numbers);
										if(numbers == 501)
										{
											alert("Something went Wrong!");
										}
										else if(numbers == 502)
										{
											alert("Allowed only 3 times!");
										}
										else
										{
											alert("Success!");
										}
								}
							});
								$("#num1").val("");
								$("#num2").val("");
								$("#num3").val("");
								$("#bet").val("");
								$("#bet_error").text("");
								$(this).dialog('close');
							
						}
				},
				{
				text: "Cancel",
				click: function(){
							$(this).dialog('close');
						}
				}
			],
			modal: true,
			show:'fade',
			hide:'fade',
			height:220,
			width:400,
			maxWidth:500,
			maxHeight:600,
			resizable: false
		});
	});
	
	$("#login_first_lottery").click(function(){
		$("#log_user").focus();
		$("#username_log").focus();
	});
	
	
});