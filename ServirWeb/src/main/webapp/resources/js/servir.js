/**
 * Javascript
 */

$(function() {
	$('select').material_select();
});

$('.datepicker').pickadate(
	{
		// Formats
		selectMonths: true, // Creates a dropdown to control month
		selectYears: 100, // Creates a dropdown of 15 years to control year
		min: new Date(1900, 1, 1),
		max: new Date(),
		format: 'dd mmm yyyy',
		formatSubmit: 'yyyy-mm-dd',
		
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
        'default': 'Arraste uma foto aqui, ou clique para adicionar uma foto',
        'replace': 'Arraste uma foto aqui, ou clique para substituir a foto atual',
        'remove':  'Remover',
        'error':   'Ooops, algo deu errado...'
    }
});