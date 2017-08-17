/**
 * Javascript
 */
$(function() {
	$('#cep-loader').hide();
	$('#loading-modal').modal({
		dismissible: false
	});
	
	$('#celular').mask('(DD) Z0000-0000', {
		translation: {
			'D': {pattern: /[1-9]/},
			'Z': {pattern: /[9]/}
		}
	});
	$('#end-cep').mask('00000-000');
	$('#end-numero').mask('00000000');
	$('#end-telefone').mask('(DD) 0000-0000', {
		translation: {
			'D': {pattern: /[1-9]/}
		}
	});
	$('#cpf-numero').mask('000.000.000-00');
	$('#rg-numero').mask('00.000.000-D', {
		translation: {
			'D': {pattern: /[Xx0-9]/}
		}
	});
});



$('#nome-completo').keyup(function() {
	var nome = $('#nome-completo').val();
	nome = nome.trim() == '' ? 'Cadastro' : nome; 
	$('#titulo').children("h2").text(nome);
});


$('#busca-cep').click(function() {
	var cep = $('#end-cep').val();
	consultaCep(cep);
});

$('#end-cep').blur(function() {
	var cep = $('#end-cep').val();
	consultaCep(cep);
})


function consultaCep(cep) {
	cep = cep.replace(/\D/g, '');
	if (cep != "") {
		//Expressão regular para validar o CEP.
        var validacep = /^[0-9]{8}$/;

        //Valida o formato do CEP.
        if(validacep.test(cep)) {
        	//Consulta o webservice viacep.com.br/
        	
            $.getJSON("//viacep.com.br/ws/"+ cep +"/json/?callback=?", function(endereco) {
                if (!("erro" in endereco)) {
                    //Atualiza os campos com os valores da consulta.
                    $("#end-logradouro").val(endereco.logradouro);
                    $("#end-bairro").val(endereco.bairro);
                    $("#end-cidade").val(endereco.localidade);
                    $("#end-uf").val(endereco.uf);
                    Materialize.updateTextFields();
                    $('#end-uf').material_select();
                } //end if.
                else {
                    //CEP pesquisado não foi encontrado.
                    alert("CEP não encontrado.");
                }
            });
        }
	}
}

function exibeExterior() {
	if ($('#naturalidade').val() != null && $('#nacionalidade').val() != 'BRA') {
		$('#naturalidade').removeAttr('disabled');
		$('select').material_select();
	}
}

$('#nacionalidade').change(function() {
	if ($(this).val() == 'BRA') {
		$('#naturalidade').removeAttr('disabled');
		$('select').material_select();
	} else {
		$('#naturalidade').attr('disabled', true);
		$('#naturalidade').prop('selectedIndex', 0);
		$('select').material_select();
	}
});

function showLoader(id) {
	id = id.charAt(0) == '#' ? id : '#' + id; 
	$(id).removeClass('hide');
};
function hideLoader(id) {
	id = id.charAt(0) == '#' ? id : '#' + id; 
	$(id).addClass('hide');
};

function obtemListaNucleos(estado) {
	showLoader('bandeirante-loader');
	$.ajax({
	    type: "GET",
	    contentType: "application/json; charset=utf-8",
	    url: "http://localhost:8080/ServirWeb/cadastro/listaNucleos?uf_id=" + estado,
	    dataType: "json",
	    success: function (data) {
	    	limparSelect('nucleo-bandeirante', true);
	    	var select_nucleos = $('#nucleo-bandeirante');
	        $.each(data, function (key, nucleo) {
	        	var op = $('<option>');
	        	op.text(nucleo.nome);
	        	op.val(nucleo.id);
	        	select_nucleos.append(op);
	        });
	        select_nucleos.material_select();
	    },
	    error: function () {
	    	alert('erro');
	    } 
	});
	hideLoader('bandeirante-loader');
};

function limparSelect(id, manterPrimeiro) {
	id = id.charAt(0) == '#' ? id : '#' + id; 
	
	if (manterPrimeiro == true) {
		$(id).find("option:gt(0)").remove();
	} else {
		$(id).find("option").remove();
	}
	
	
	$(id).material_select('update');
};

$('#estado-bandeirante').change(function() {
	var estado = $(this).val();
	obtemListaNucleos(estado);
	$(this).material_select();
});

function teste() {
	var select_estados = $('#estado-bandeirante');
	var op = $('<option>');
	op.text('Rio');
	op.val(2);
	select_estados.append(op);
	
	op = $('<option>');
	op.text('Para');
	op.val(-1);
	select_estados.append(op);
	
	select_estados.material_select('update');
};

function obtemListaGrupos(nucleo, ramo) {
	showLoader('bandeirante-loader');
	$.ajax({
	    type: "GET",
	    contentType: "application/json; charset=utf-8",
	    url: "http://localhost:8080/ServirWeb/cadastro/listaGrupos?nucleo_id=" + nucleo + "&ramo_id=" + ramo,
	    dataType: "json",
	    success: function (data) {
	    	limparSelect('grupo-bandeirante', true);
	    	var select_grupos = $('#grupo-bandeirante');
	        $.each(data, function (key, grupo) {
	        	var op = $('<option>');
	        	op.text(grupo.nome);
	        	op.val(grupo.id);
	        	select_grupos.append(op);
	        });
	        select_grupos.material_select();
	    },
	    error: function () {
	    	alert('erro');
	    } 
	});
	hideLoader('bandeirante-loader');
};


function atualizListaGrupos() {
	var nucleo = $('#nucleo-bandeirante').val();
	var ramo = $('#ramo-bandeirante').val();
	if (nucleo != null && ramo != null) {
		obtemListaGrupos (nucleo, ramo);
	} else {
		limparSelect('grupo-bandeirante', true);
	}
	
	$(this).material_select();
} 

$('#nucleo-bandeirante').change(atualizListaGrupos);
$('#ramo-bandeirante').change(atualizListaGrupos);