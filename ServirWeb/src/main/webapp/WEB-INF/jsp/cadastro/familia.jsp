<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="servir" %>

<script type="text/javascript">
	function testeeee(){
		var url = "http://localhost:8080/ServirWeb/cadastros/busca.json";
		var email = $('#familia-email').val();
		var cpf = $('#familia-cpf').val();
		$.ajax({
			type: 'GET',
			url: url,
			data: {email:email, cpf:cpf},
			dataType: 'json',
			success: function(p){
				var a = '<div class="alert alert-warning alert-dismissible" role="alert">' + 
				'<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>'+
				  '<strong>E-mail e/or CPF não encontrados!' + 
				'</div>';
				
				alert('Qtd: ' + p.list.length);
				
				if (p.list.length == 0) {
					$('#al').html(a);
				}
				
				var linhas = [];
				//linhas.push = ('<thead><tr class="default"><th>Id</th><th>Nome</th></tr></thead><tbody>');
				for (var i = 0; i <p.list.length; i++){
					linhas.push('<tr><td>' + p.list[i].id + '</td><td>' + p.list[i].nome + '</td><tr>')
				}
				
				$('#te').children('tbody').html(linhas.join(''));
				
				
			}
		});
	}
</script>
<div id="al"></div>
<button type="button" class="btn btn-success" onclick="testeeee()">T</button> 

<input id="familia-email" type="text" >
<input id="familia-cpf" type="text" >

<table id="te" class="table table-hover">
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

