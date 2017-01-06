<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:import url="/WEB-INF/jsp/header.jsp"/>

<a href="${linkTo[CadastroController].form()}">Novo cadastro</a>

<table class="table table-hover">
  <thead>
	<thead>
		<tr class="success">
			<th>Id</th>
			<th>Nome</th>
			<th>E-mail</th>
			<th>Celular</th>
			<th>Sexo</th>
			<th>Usuario</th>
			<th>Ações</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach items="${pessoas}" var="pessoa">
			<tr>
				<td>${pessoa.id}</td>
				<td>${pessoa.nome}</td>
				<td>${pessoa.email}</td>
				<td>${pessoa.celular}</td>
				<td>${pessoa.sexo}</td>
				<td>${pessoa.usuario.login}</td>
				<td><a href="${linkTo[CadastroController].form(pessoa.id)}">Editar</a></td>
			</tr>
		</c:forEach>
	</tbody>
</table>

<c:import url="/WEB-INF/jsp/footer.jsp"/>