<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="servir" %>

<script type="text/javascript">
	function testeeee(){
		var url = "http://localhost:8080/ServirWeb/cadastros/busca.json";
		$.ajax({
			type: 'GET',
			url: url,
			dataType: 'text',
			cache: 'false',
			success: function(data){
				
				alert('${list}');
			}
		});
	}
	function testeeee2(){
		var url = "http://localhost:8080/ServirWeb/cadastros/carrega.xml";
		$.ajax({
			type: 'GET',
			url: url,
			dataType: 'text',
			cache: 'false',
			success: function(data){
				//$('#aaa').val('${pessoa.nome}');
				alert('{pessoa.nome}');
				
			}
		});
	}
</script>

<button type="button" class="btn btn-success" onclick="testeeee()">T</button> 
<button type="button" class="btn btn-success" onclick="testeeee2()">T2</button>

<input id="aaa" type="text" value="${ps.nome}" >

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

