$(document).ready(function() {
		
		if($(useraccess == 'Normal Access')){
			$('#admin').hide();
		}
		
	});	
	
	$('#login').click( function(){
	    $(this).toggleClass('glyphicon-log-in').toggleClass('glyphicon-log-out');
	});
	
	