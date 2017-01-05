<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:import url="/WEB-INF/jsp/header.jsp"/>

<a href="${linkTo[CadastroController].form()}">Novo cadastro</a>

<table class="mdl-data-table mdl-js-data-table mdl-data-table--selectable mdl-shadow--2dp">
  <thead>
	<thead>
		<tr>
			<th>Id</th>
			<th class="mdl-data-table__cell--non-numeric">Nome</th>
			<th class="mdl-data-table__cell--non-numeric">E-mail</th>
			<th class="mdl-data-table__cell--non-numeric">Celular</th>
			<th class="mdl-data-table__cell--non-numeric">Sexo</th>
			<th class="mdl-data-table__cell--non-numeric">Usuario</th>
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