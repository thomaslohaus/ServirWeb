<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="servir" %>

<c:import url="/WEB-INF/jsp/header.jsp"/>
<style>
.checkbox, .radio {
	margin-top: 0px;
}
.form-control-feedback {
	text-align: inherit !important;
}

.fileUpload {
    position: relative;
    overflow: hidden;
}
.fileUpload input.upload {
    position: absolute;
    top: 0;
    right: 0;
    margin: 0;
    padding: 0;
    font-size: 20px;
    cursor: pointer;
    opacity: 0;
    filter: alpha(opacity=0);
}

html {
  overflow-y: scroll;
}
</style>
<script>
$('#tabs a').click(function (e) {
	  e.preventDefault()
	  $(this).tab('show')
	})
</script>
<form action="${linkTo[CadastroController].salvar(null, null, null, null)}" method="post" enctype="multipart/form-data">
	<input type="hidden" name="pessoa.id" id="id" value="${pessoa.id}" />
	<input type="hidden" name="pessoa.documentos.id" value="${pessoa.documentos.id}" />
	<input type="hidden" name="pessoa.bandeirante.id" value="${pessoa.bandeirante.id}" />
	<input type="hidden" name="pessoa.bandeirante.entidade.id" value="${pessoa.bandeirante.entidade.id}" />
	
	<div class="page-header">
		<div class="pull-right">
			<a class="btn btn-default" href="${linkTo[CadastroController].lista()}">Voltar</a>
			<input type="submit" value="Salvar" class="btn btn-success">
		</div>
		<h2>${empty pessoa.nome ? 'Cadastro' : pessoa.nome}</h2>
	</div>

	<!-- Tabs -->
	<ul id="tabs" class="nav nav-tabs" role="tablist" style="margin-top: 15px">
		<c:forEach items="${tabs}" var="tab">
			<c:set var="act" value="${tab.codigo eq 'tab-pessoal' ? true : false}"></c:set>
			<servir:tab-menu tab="${tab.codigo}" descricao="${tab.descricao}" glyphicon="${tab.icone}" active="${act}" />
		</c:forEach>
	</ul>
	
	<div class="tab-content">
		<div role="tabpanel" class="tab-pane active" id="tab-pessoal">
			<c:import url="/WEB-INF/jsp/cadastro/pessoal.jsp" />
			
			<c:import url="/WEB-INF/jsp/cadastro/documentos.jsp" />
		</div>
		<div role="tabpanel" class="tab-pane" id="tab-endereco">
			<c:import url="/WEB-INF/jsp/cadastro/endereco.jsp"/>
		</div>
		
		<div role="tabpanel" class="tab-pane" id="tab-familia">
			<c:import url="/WEB-INF/jsp/cadastro/familia.jsp"/>
		</div>
		
		<div role="tabpanel" class="tab-pane" id="tab-bandeirante">
			<c:import url="/WEB-INF/jsp/cadastro/bandeirante.jsp"/>
		</div>
		
		<div role="tabpanel" class="tab-pane" id="tab-saude">
			<c:import url="/WEB-INF/jsp/cadastro/saude.jsp"/>
		</div>
		
		<div role="tabpanel" class="tab-pane" id="tab-formacao">
			<c:import url="/WEB-INF/jsp/cadastro/formacao.jsp"/>
		</div>
	</div><!-- Tab Content -->
	
</form>
<script>
function removeBlankOption(control) {
	var f = $(control).children().first();
	if ($(control).children(':selected').val() != '' && f.val() == '') {
		f.remove();
	}
}

function validarPais() {
	var pais = $('#nacionalidade').children('select').val();
	estadosBrasileiros(pais);
	documentosBrasileiros(pais)
}

function estadosBrasileiros(pais) {
	if (pais == 'BRA')	{
		$('#naturalidade').show();
	} else {
		$('#naturalidade').hide();
	}
}

function documentosBrasileiros(pais) {
	if (pais == 'BRA')	{
		$('#DocRg').show();
		$('#DocRne').hide();
	} else {
		$('#DocRg').hide();
		$('#DocRne').show();
	}
}

$(document).ready(function() {
    console.log( "ready!" );
    validarPais();
});

// Máscaras
$(document).ready(function() {
	$('#celular').children('input').mask('(00) 90000-0000');
	$('.cpf').mask('000.000.000-00');
	$('#rgNumero').children('input').mask('00.000.000-0');
});

function campoComErro(campo) {
	$('#' + campo).addClass('has-error');
	$('#' + campo).append('<span class="glyphicon glyphicon-remove form-control-feedback" aria-hidden="true"></span>');
}

function limparErro(campo) {
	$('#' + campo).removeClass('has-error');
	$('#' + campo).children('span.glyphicon.glyphicon-remove.form-control-feedback').remove();
	$('#' + campo).children('label.error-message').remove();
}

function mostrarMsgErro(campo, msg) {
	campoComErro(campo);
	$('#' + campo).append('<label class="error-message">' + msg + '</label>');
}

function cpfValido(cpf) {
	var ret = true;

    // this is mostly not needed
    var invalidos = [
         '111.111.111-11',
         '222.222.222-22',
         '333.333.333-33',
         '444.444.444-44',
         '555.555.555-55',
         '666.666.666-66',
         '777.777.777-77',
         '888.888.888-88',
         '999.999.999-99',
         '000.000.000-00'
     ];
     for(i = 0; i < invalidos.length; i++) {
         if( invalidos[i] == cpf) {
             ret = false;
         }
     }

     cpf = cpf.replace("-", "");
     cpf = cpf.replace(/\./g, "");

     //validando primeiro digito
     add = 0;
     for ( i=0; i < 9; i++ ) {
         add += parseInt(cpf.charAt(i), 10) * (10-i);
     }
     rev = 11 - ( add % 11 );
     if( rev == 10 || rev == 11) {
         rev = 0;
     }
     if( rev != parseInt(cpf.charAt(9), 10) ) {
    	 ret = false;
     }

     //validando segundo digito
     add = 0;
     for ( i=0; i < 10; i++ ) {
         add += parseInt(cpf.charAt(i), 10) * (11-i);
     }
     rev = 11 - ( add % 11 );
     if( rev == 10 || rev == 11) {
         rev = 0;
     }
     if( rev != parseInt(cpf.charAt(10), 10) ) {
    	 ret = false;
     }

     return ret;
}

$('#cpfNumero').children('input').blur(function() {
	var cpf = $(this).val();
	if (cpfValido(cpf)) {
		limparErro('cpfNumero');
	} else {
		mostrarMsgErro('cpfNumero', 'CPF Inválido!');		
	}
		
});

$('#fileInput-Cpf').change(function() {
	var fullname = $('#fileInput-Cpf').val();
	var name = fullname.substring(fullname.lastIndexOf('\\') + 1, fullname.length);
	$('#uploadedFileName-Cpf').text(name);	
});

$('#temConvenio input:radio').change(function() {
	exibirDadosConvenio();
});

function exibirDadosConvenio() {
	if ($('#temConvenio input:radio:checked').val() == 'true')
		$('#dadosConvenio').show();
	else
		$('#dadosConvenio').hide();
}

function exibirDetalhes(radio) {
	if ($(radio).val() == 'true') {
		$(radio).parent().parent().parent().next('div').show();
	} else {
		$(radio).parent().parent().parent().next('div').hide();
	}
	
}

$(document).ready(function() {
	exibirDetalhes($('#temAlergiaGeral input:radio:checked'));
});

function novaDoenca(i, c) {
	var check = $(i).siblings('span').children('input');
	if ($(i).val().trim() != "") {
		check.prop('checked', true);
		if ($('.input-checkbox-doenca').length < c)
			addOutraDoenca($(i).parent().parent());
	} else {
		if ($('.input-checkbox-doenca').length > 1)
			$(i).parent().remove();
	}
};

function addOutraDoenca(d) {
	d.append(
		'<div class="input-group col-md-2" style="margin: 5px;">' + 
			'<span class="input-group-addon">' + 
				'<input type="checkbox" aria-label="Outros"> ' +
			'</span>' +
			'<input type="text" class="form-control input-checkbox-doenca" placeholder="Outra: descreva" onblur="novaDoenca(this, 4)">' +
		'</div>'
	)
}

function tipoRemedio(check) {
	if ($(check).prop('id') == 'remedio-nenhum') {
		if ($(check).prop('checked') == true) {
			$('#remedio-alopaticos').prop('checked', false);
			$('#remedio-homeopaticos').prop('checked', false);
		}
	} else {
		if ($(check).prop('checked') == true) {
			$('#remedio-nenhum').prop('checked', false);
		}
	}
}

function novoRemedio(tipo) {
	var line =
		'<tr class="default remedio-{tipo}">' + 
		'	{sintoma}' +
		'	<td><input type="text" class="form-control"></td>' + 
		'	<td><input type="text" class="form-control"></td>' + 
		'	<td><input type="text" class="form-control"></td>' +
		'	<td style="text-align: center;  vertical-align: middle;">' + 
		'		<button type="button" class="btn btn-danger btn-xs" onclick="removerRemedio(this)">' + 
		'			<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>' + 
		'		</button>' + 
		'	</td>' + 
		'</tr>';
	
	line = line.replace('{tipo}', tipo);
		
	if (tipo == 'atual') {
		line = line.replace('{sintoma}', '');
		$('.remedio-atual').parent().append(line);
	} else if (tipo == 'ocasional') {
		line = line.replace('{sintoma}', '<td><input type="text" class="form-control"></td>');
		$('.remedio-ocasional').parent().append(line);
	}
}

function removerRemedio(btn) {
	var row = $(btn).parent().parent();
	var remedio = ($(btn).parent().parent().hasClass('remedio-atual')) ? '.remedio-atual' : '.remedio-ocasional';
	if ($(remedio).length > 1) {
		row.remove();
	} else {
		$(row).children().children('input').val('');
	}
}

function novaVacina() {
	var line =
		'<tr class="default outras-vacinas">' + 
		'	<td><input type="text" class="form-control"></td>' + 
		'	<td><input type="checkbox" class="form-control"></td>' + 
		'	<td><input type="text" class="form-control"></td>' + 
		'	<td style="text-align: center;  vertical-align: middle;">' + 
		'		<button type="button" class="btn btn-danger btn-xs" onclick="removerVacina(this)">' + 
		'			<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>' + 
		'		</button>' + 
		'	</td>' + 
		'</tr>';

	if ($('.outras-vacinas').length > 0)
		$('.outras-vacinas').parent().append(line);
	else
		$('.vacinas').parent().append(line);
}

function removerVacina(btn) {
	var row = $(btn).parent().parent();
	if ($('.outras-vacinas').length > 0) {
		row.remove();
	} else {
		$(row).children().children('input').val('');
	}
}
</script>
<c:import url="/WEB-INF/jsp/footer.jsp"/>