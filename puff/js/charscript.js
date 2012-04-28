$(document).ready(function(){
	
	$('#reset_chracter').click(function(){
		$("#reset_panel").dialog({ buttons: [
					{
					text: "Done!",
					click: function() { 
							$(this).dialog("close"); 
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
				height:'auto',
				width:500,
				maxWidth:500,
				maxHeight:600,
				resizable: false
		});
	});
	

});