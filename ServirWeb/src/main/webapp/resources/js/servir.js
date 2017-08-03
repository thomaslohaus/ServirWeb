/**
 * Javascript
 */

$(function() {
	/*
	$.get('https://restcountries.eu/rest/v2/all?fields=name;translations;alpha3Code', function(countries) {
		for (var i = 0; i < countries.length; i++) {
			console.log(countries[i].translations['br'] + ' - ' + countries[i].alpha3Code);			
		}
	});
	*/
	
	$('select').material_select();
	
	$('select').change(function() {
		if ($(this).val() != "") {
			$(this).parent().find(".select-dropdown").addClass("valid");
		}
	});
	
	$('.modal').modal();
	
	$('#religiao').autocomplete(
		{
			data: {
				'Budista': null,
				'Candomblé': null,
				'Católico': null,
				'Cristão anglicano': null,
				'Cristão ortodoxo': null,
				'Espírita': null,
				'Evangélico': null,
				'Hindú': null,
				'Humanismo religioso': null,
				'Judeu': null,
				'Muçulmano': null,
				'Protestante': null,
				'Taoísta': null,
				'Umbandista': null
			},
			limit: 3, // The max amount of results that can be shown at once. Default: Infinity.
			onAutocomplete: function(val) {
			  // Callback function when value is autcompleted.
			},
			minLength: 1, // The minimum length of the input for the autocomplete to start. Default: 1.
			}
	);
	
	$('.datepicker').change(function(d){
		if ($(this).val() != "") {
			$(this).removeClass("invalid");
			$(this).addClass("valid");
		} else {
			$(this).removeClass("valid");
			$(this).addClass("invalid");
		}
	});
	
	$('.datepicker').pickadate(
		{
			// Formats
			selectMonths: true, // Creates a dropdown to control month
			selectYears: 100, // Creates a dropdown of 15 years to control year
			min: new Date(1900, 1, 1),
			max: new Date(),
			format: 'dd/mm/yyyy',
			formatSubmit: 'yyyy-mm-dd',
			hiddenName: true,
			
			// The title label to use for the month nav buttons
	        labelMonthNext: 'Mês seguinte',
	        labelMonthPrev: 'Mês anterior',

	        // The title label to use for the dropdown selectors
	        labelMonthSelect: 'Selecione um mês',
	        labelYearSelect: 'Selecione um ano',

	        // Months and weekdays
	        monthsFull: ['Janeiro', 'Fevereiro', 'Março', 'Abril', 'Maio', 'Junho', 'Julho', 'Agosto', 'Setembro', 'Outubro', 'Novembro', 'Dezembro'],
			monthsShort: ['Jan', 'Fev', 'Mar', 'Abr', 'Mai', 'Jun', 'Jul', 'Ago', 'Set', 'Out', 'Nov', 'Dez'],
			weekdaysFull: ['Domingo', 'Segunda', 'Terça', 'Quarta', 'Quinta', 'Sexta', 'Sábado'],
			weekdaysShort: ['Dom', 'Seg', 'Ter', 'Qua', 'Qui', 'Sex', 'Sab'],
			weekdaysLetter: [ 'D', 'S', 'T', 'Q', 'Q', 'S', 'S' ],
			showWeekdaysShort: true,
			
	        // Today and clear
			today: 'Hoje',
			clear: 'Limpar',
			close: 'Selecionar'
		}
	);
	
	$('.dropify').dropify({
	    messages: {
	        'default': 'Foto 3x4',
	        'replace': 'Foto 3x4',
	        'remove':  'Remover',
	        'error':   'Ooops, algo deu errado...'
	    }
	});
	
	$('.scrollspy').scrollSpy();
	
});

$('#celular').mask('(DD) Z0000-0000', {
	translation: {
		'D': {pattern: /[1-9]/},
		'Z': {pattern: /[9]/}
	}
});