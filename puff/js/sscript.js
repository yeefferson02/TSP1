/*******************************/
/*Send Report Script for PuffRO*/
/*Code Version 2.0             */
/*Date: April 20, 2012         */
/*Property of: Inztig@teCodez  */
/*******************************/
$(document).ready(function(){
$("#content").val("Enter your Report..");
$("#content").css('color','grey');
$("#content").attr('readonly','readonly');
		
		$("#title").bind('blur',function(){
			if($(this).val() != "")
			{
				$("#content").val("");
				$("#content").css('color','');
				$("#content").removeAttr('readonly');
			}
			else
			{
				$("#content").val("Enter your Report..");
				$("#content").css('color','grey');
				$("#content").css('background-color','white');
				$("#content").attr('readonly','readonly');
			}
		});
		
		$("#send").click(function(){
			$.ajax({
				type:'post',
				data:{title:$("#title").val(),content:$("#content").val()},
				url: '../../php/sendReport.php',
				success: function(report){
					if(report == 100)
					{
						$('.dynamicContent').load('news.php');
						$('html, body').animate({scrollTop: $('#banner').offset().top},1000);
						alert("Your Report Have been Submitted!");
					}
					else if(report == 501)
					{
						alert("Please write your Report");
					}
					else if(report == 502)
					{
						alert("You can only sumbit your report once very 12 hrs");
					}
					else if(report == 503)
					{
						alert("SQL error!");
					}
				}
			});
		});
});