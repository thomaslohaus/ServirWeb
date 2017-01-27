/**
 * Javascript
 */
$(document).ready(function(){
	$('#user-menu-img').on('click', function() {
		if ($('#user-info-menu').is(':visible'))
			hideUserMenu();
		else
			showUserMenu();
	});
	
	$(function () {
	  $('[data-toggle="tooltip"]').tooltip()
	});
	
	function hideUserMenu() {
		$('#user-info-menu').hide();
	};
	 
	function showUserMenu() {
		$('#user-info-menu').show();
	};
	
	$('.input-checkbox-doenca').blur(function() {
		alert('oi');
		alert($(this).val());
	});
	
});