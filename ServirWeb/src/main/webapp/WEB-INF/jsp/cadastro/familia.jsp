<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="servir" %>

<script type="text/javascript">
	function buscarFamiliar(){
		$('.alert').alert('close');
		
		var url = "http://localhost:8080/ServirWeb/cadastros/busca.json";
		
		var email = $('#familia-email').val();
		var cpf = $('#familia-cpf').val();

		if (email.trim() == '' && cpf.trim() == '') {
			showAlert('danger', 'Preencher os campos <i>E-mail</i> e/ou <i>CPF</i>');
		}
		else if (cpf.trim() != '' && cpfValido(cpf) == false) {
			showAlert('danger', 'CPF inválido!');
		}
		else {
			$.ajax({
				type: 'GET',
				url: url,
				data: {email:email, cpf:cpf},
				dataType: 'json',
				success: function(familia){
					
					if (familia.list.length == 0) {
						showAlert('warning', 'E-mail e/or CPF não encontrados!');
					} else {
					
						var linhas = [];
						for (var i = 0; i < familia.list.length; i++){
							linhas.push(
								'<tr>' + 
								'	<td><input type="checkbox" class="familia-check" id="familia-check-' + familia.list[i].id + '"></td>' +
								'	<td>' + familia.list[i].nome + '</td>' +
								'	<td>' + familia.list[i].email + '</td>' +
								'	<td>' + familia.list[i].id + '</td>' +
								'	<td>' +
								'		<select id="familia-relacao" class="form-control">' +
								'			<option value="" label="" />' +
								'			<option value="PAI-MAE" label="Pai/Mãe" />' +
								'			<option value="FILHO" label="Filho(a)" />' +
								'		</select>' +
								'	</td>' +
								'<tr>'
							)
						}
						
						$('#busca-familia').children('tbody').html(linhas.join(''));
						$('#lista-familia').show();
					}
				}
			});
		}
	}
	function limparModalFamilia() {
		$('#familia-email').val('');
		$('#familia-cpf').val('');
		$('.alert').alert('close');
		$('#lista-familia').hide();
	}
	
	function showAlert(type, msg) {
		var atencao = '' + 
			'<div class="alert alert-' + type + ' alert-dismissible" role="alert">' + 
			'	<button type="button" class="close" data-dismiss="alert" aria-label="Close">' + 
			'		<span aria-hidden="true">&times;</span>' +
			'	</button>' +
		  	'	<strong>' + msg + '</strong>' + 
			'</div>';
			
		$('#familia-alerta').html(atencao);
	}
</script>

<button type="button" class="btn btn-info pull-right" style="margin-top: 10px" data-toggle="modal" data-target="#familia-modal">
	<span class="glyphicon glyphicon-search"></span>
	Procurar Familiar
</button> 

<table id="familia" class="table table-hover">
	<thead>
		<tr class="default">
			<th>Id</th>
			<th>Nome</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach items="${list}" var="pessoa">
			<td>${pessoa.id}</td>
			<td>${pessoa.nome}</td>
		</c:forEach>
	</tbody>
</table>

<div id="familia-modal" class="modal fade" tabindex="-1" role="dialog">
	<div class="modal-dialog modal-lg" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close" onclick="limparModalFamilia()">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title">Procurar Familiar</h4>
			</div>
			<div class="modal-body" style="margin-bottom: 10px">
				<div id="familia-alerta"></div>
				<div class="panel panel-default">
					<div class="panel-body">
						<div class="row">
							<label class="col-md-2" for="familia-email">E-mail</label>
							<div class="col-md-8">
								<input type="text" id="familia-email" class="form-control">
							</div>
						</div>
						<div class="row">
							<label class="col-md-2" for="familia-cpf">CPF</label>
							<div class="col-md-4">
								<input type="text" id="familia-cpf" class="form-control cpf">
							</div>
						</div>
					</div>
				</div>
				<div id="lista-familia" class="panel panel-default" style="display: none;">
					<div class="panel-body">
						<table id="busca-familia" class="table table-hover" style="margin-bottom: 0px">
							<thead>
								<tr>
									<th></th>
									<th>Nome</th>
									<th>E-mail</th>
									<th>CPF</th>
									<th>Relação</th>
								</tr>
							</thead>
							<tbody>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal" onclick="limparModalFamilia()">Fechar</button>
				<button type="button" class="btn btn-success" onclick="buscarFamiliar()">Selecionar</button>
			</div>
		</div>
	</div>
</div>