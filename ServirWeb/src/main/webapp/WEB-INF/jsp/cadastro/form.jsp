<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="servir" %>

<c:import url="/WEB-INF/jsp/header.jsp"/>
<style>
.form-control-feedback {
	text-align: inherit !important;
}

.fileUpload {
    position: relative;
    overflow: hidden;
    margin: 10px;
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
</style>
<form action="${linkTo[CadastroController].salvar(null, null)}" method="post" enctype="multipart/form-data">
	<input type="hidden" name="pessoa.id" id="id" value="${pessoa.id}" />
	
	<div class="pull-right">
		<input type="submit" value="Salvar" class="btn btn-primary" />
	</div>
	
	<h2>Cadastro</h2>

	<div class="panel panel-primary">
		<div class="panel-heading">
			<h5 class="panel-title">Dados Pessoais</h5>
		</div>
		<div class="panel-body">
			<div class="row">
				<div class="col-md-10" class="has-feedback">
					<div class="row" style="margin-bottom: 5px">
						<label class="col-md-2 control-label" for="nome">Nome Completo</label>
						<div class="col-md-10 form-group-required" id="nome">
							<input type="text" name="pessoa.nome" class="form-control" value="${pessoa.nome}" placeholder="Campo Obrigatório" />
						</div>
					</div>
					<div class="row" style="margin-bottom: 5px">
						<label class="col-md-2 control-label" for="dataNascimento">Data Nasc.</label>
						<servir:validationMessage nome="pessoa.dataNascimento" />
						<div class="col-md-4" id="dataNascimento">
							<input type="date" name="pessoa.dataNascimento" class="form-control" value="${pessoa.dataNascimento}" placeholder="Campo Obrigatório" />
						</div>
					</div>
					
					<div class="row" style="margin-bottom: 5px">
						<label class="col-md-2 control-label" for="nacionalidade">Nacionalidade</label>
						<servir:validationMessage nome="pessoa.nacionalidade" />
						<div class="col-md-4 form-group-required" id="nacionalidade">
							<select name="pessoa.nacionalidade" class="form-control" onchange="validarPais()">
								<c:forEach items="${paises}" var="pais">
									<c:set var="sel" value="${pessoa.nacionalidade eq pais.codigo ? 'selected':''}"></c:set>
									<option value="${pais.codigo}" ${sel}>${pais.descricao}</option>
								</c:forEach>
							</select>
						</div>
						
						<label class="col-md-2 control-label" for="naturalidade">Naturalidade (Estado)</label>
						<servir:validationMessage nome="pessoa.naturalidade" />
						<div class="col-md-4 form-group-required" id="naturalidade">
							<select name="pessoa.naturalidade" class="form-control" onchange="removeBlankOption(this)" onfocus="removeBlankOption(this)">
								<option value="" label="Campo Obrigatório" />
								<c:forEach items="${estados}" var="estado">
									<c:set var="sel" value="${pessoa.naturalidade eq estado.uf ? 'selected':''}"></c:set>
									<option value="${estado.uf}" ${sel}>${estado.uf} - ${estado.descricao}</option>
								</c:forEach>
							</select>
						</div>
					</div>
					
					<div class="row" style="margin-bottom: 5px">
						<label class="col-md-2 control-label" for="sexo">Sexo</label>
						<servir:validationMessage nome="pessoa.sexo" />
						<div class="col-md-4 form-group-required" id="sexo">
							<select name="pessoa.sexo" class="form-control" onchange="removeBlankOption(this)" onfocus="removeBlankOption(this)">
								<option value="" label="Campo Obrigatório" />
								<c:forEach items="${sexos}" var="sexo">
									<c:set var="sel" value="${pessoa.sexo eq sexo ? 'selected':''}"></c:set>
									<option value="${sexo}" ${sel}>${sexo.descricao}</option>
								</c:forEach>
							</select>
						</div>
						
						<label class="col-md-2 control-label" for="estadoCivil">Estado Civil</label>
						<servir:validationMessage nome="pessoa.estadoCivil" />
						<div class="col-md-4 form-group-required" id="estadoCivil">
							<select name="pessoa.estadoCivil" class="form-control" onchange="removeBlankOption(this)" onfocus="removeBlankOption(this)">
								<option value="" label="Campo Obrigatório" />
								<c:forEach items="${estadosCivis}" var="estadoCivil">
									<c:set var="sel" value="${pessoa.estadoCivil eq estadoCivil ? 'selected':''}"></c:set>
									<option value="${estadoCivil}" ${sel}>${estadoCivil.descricao}</option>
								</c:forEach>
							</select>
						</div>
					</div>
					
					<div class="row" style="margin-bottom: 5px">
						<label class="col-md-2 control-label" for="religiao">Religião</label>
						<servir:validationMessage nome="pessoa.religiao" />
						<div class="col-md-4" id="religiao">
							<input type="text" name="pessoa.religiao" class="form-control" value="${pessoa.religiao}" />
						</div>
					</div>
					
					<div class="row" style="margin-bottom: 5px">
						<label class="col-md-2 control-label" for="email">E-mail</label>
						<servir:validationMessage nome="pessoa.email" />
						<div class="col-md-4 form-group-required" id="email">
							<input type="text" name="pessoa.email" class="form-control" value="${pessoa.email}" placeholder="Campo Obrigatório" />
						</div>
					
						<label class="col-md-2 control-label" for="celular">Celular</label>
						<servir:validationMessage nome="pessoa.celular" />
						<div class="col-md-4 form-group-required" id="celular">
							<input type="text" name="pessoa.celular" class="form-control" value="${pessoa.celular}" placeholder="Campo Obrigatório" />
						</div>
					</div>
					
				</div>
				<div class="col-md-2">
					<div class="col-md-11">
						<a href="#" class="thumbnail">
							<!-- <img src="https://lh3.googleusercontent.com/-iE-ppzRWaQ4/AAAAAAAAAAI/AAAAAAAAAAA/AGNl-OqqfdJ5_WrBuUxJxiotvciEYPSC4g/s96-c-mo/photo.jpg"-->
							<img src="http://goo.gl/46DJuy" 
								alt="Img"
								style="min-height:50px;max-height:150px;">
						</a>
					</div>
				</div>
			</div>		
		</div>
	</div>
	
	<div class="panel panel-primary">
		<div class="panel-heading">
			<h5 class="panel-title">Documentos</h5>
		</div>
		<div class="panel-body" style="padding: 0px">
			<input type="hidden" name="pessoa.documentos.id" value="${pessoa.documentos.id}" />
			<table class="table table-bordered" style="margin-bottom: 0px">
				
				<tr id="DocCpf">
					<td style="vertical-align: middle; text-align: center;">
						<h5 style="margin-top: 5px;"><b>CPF</b></h5>
					</td>
					<td>
						<div class="form-group">
							<label class="col-md-2 control-label" for="cpfNumero">Número</label>
							<div class="col-md-3" id="cpfNumero">
								<input type="text" name="pessoa.documentos.cpfNumero" class="form-control" 
									value="${pessoa.documentos.cpfNumero}" />
							</div>
						</div>
						<div class="fileUpload btn btn-primary">
							<span class="glyphicon glyphicon-cloud-upload" aria-hidden="true"></span>
							<input id="fileinput" type="file" name="photo" class="upload">
						</div>
						<label id="uploadedFileName"></label>
					</td>
				</tr>
				
				<tr id="DocRg">
					<td style="vertical-align: middle; text-align: center;">
						<h5 style="margin-top: 5px;"><b>RG</b></h5>
					</td>
					<td style="vertical-align: middle">
						<div class="form-group">
							<label class="col-md-2 control-label" for="rgNumero">Número</label>
							<div class="col-md-3" id="rgNumero">
								<input type="text" name="pessoa.documentos.rgNumero" class="form-control" 
									value="${pessoa.documentos.rgNumero}" />
							</div>
						</div>
						<br/> 
						<div class="form-group">
							<label class="col-md-2 control-label" for="rgOrgaoExpeditor">Órgão Expeditor</label>
							<div class="col-md-3 form-group-required" id="rgOrgaoExpeditor">
								<input type="text" name="pessoa.documentos.rgOrgaoExpeditor" class="form-control" 
									value="${pessoa.documentos.rgOrgaoExpeditor}" />
							</div>
							<label class="col-md-2 control-label" for="rgDataExpedicao">Data Expdição</label>
							<div class="col-md-3 form-group-required" id="rgDataExpedicao">
								<input type="date" name="pessoa.documentos.rgDataExpedicao" class="form-control" 
									value="${pessoa.documentos.rgDataExpedicao}" />
							</div>
						</div>
					</td>
				</tr>
				
				<tr id="DocRne">
					<td style="vertical-align: middle; text-align: center;">
						<h5 style="margin-top: 5px;"><b>RNE</b></h5>
					</td>
					<td style="vertical-align: middle">
						<div class="form-group">
							<label class="col-md-2 control-label" for="rneNumero">Número</label>
							<div class="col-md-3 form-group-required" id="rneNumero">
								<input type="text" name="pessoa.documentos.rneNumero" class="form-control" 
									value="${pessoa.documentos.rneNumero}" />
							</div>
						</div>
						<br/> 
						<div class="form-group">
							<label class="col-md-2 control-label" for="rneClassificacao">Classificação</label>
							<div class="col-md-3 form-group-required" id="rneClassificacao">
								<input type="text" name="pessoa.documentos.rneClassificacao" class="form-control" 
									value="${pessoa.documentos.rneClassificacao}" />
							</div>
							<label class="col-md-2 control-label" for="rneDataExpedicao">Data Expedição</label>
							<div class="col-md-3 form-group-required" id="rneDataExpedicao">
								<input type="date" name="pessoa.documentos.rneDataExpedicao" class="form-control" 
									value="${pessoa.documentos.rneDataExpedicao}" />
							</div>
						</div>
						<br/> 
						<div class="form-group">
							<label class="col-md-2 control-label" for="rneDataValidade">Data Validade</label>
							<div class="col-md-3 form-group-required" id="rneDataValidade">
								<input type="date" name="pessoa.documentos.rneDataValidade" class="form-control" 
									value="${pessoa.documentos.rneDataValidade}" />
							</div>
							<label class="col-md-2 control-label" for="rneDataEntrada">Data Entrada</label>
							<div class="col-md-3 form-group-required" id="rneDataEntrada">
								<input type="date" name="pessoa.documentos.rneDataEntrada" class="form-control" 
									value="${pessoa.documentos.rneDataEntrada}" />
							</div>
						</div>
					</td>
				</tr>
			</table>
		</div>
	</div>
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
		$('#naturalidade').children('select').show();
	} else {
		$('#naturalidade').children('select').hide();
	}
}

function documentosBrasileiros(pais) {
	if (pais == 'BRA')	{
		$('#DocCpf').show();
		$('#DocRne').hide();
	} else {
		$('#DocCpf').hide();
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
	$('#cpfNumero').children('input').mask('000.000.000-00');
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

$('#fileinput').change(function() {
	var fullname = $('#fileinput').val();
	var name = fullname.substring(fullname.lastIndexOf('\\') + 1, fullname.length);
	$('#uploadedFileName').text(name);	
});
</script>
<c:import url="/WEB-INF/jsp/footer.jsp"/>