<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:import url="/WEB-INF/jsp/header.jsp"/>

<div class="col-md-12" style="margin-bottom: 20px;">
	<a class="btn btn-primary pull-right" href="${linkTo[CadastroController].form()}">Novo</a>
</div>
<table class="table table-hover">
	<thead>
		<tr class="default">
			<th>Id</th>
			<th>Nome</th>
			<th>Sexo</th>
			<th>Usuario</th>
			<th>Equipe</th>
			<th>Grupo</th>
			<th>Núcleo</th>
			<th>Ações</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach items="${pessoas}" var="pessoa">
			<c:choose>
				<c:when test="${pessoa.bandeirante.entidade.ramo eq 'CIRANDA'}">
					<c:set var="rowClass" value="warning" scope="page"/>
				</c:when>
				<c:when test="${pessoa.bandeirante.entidade.ramo eq 'B1'}">
					<c:set var="rowClass" value="info" scope="page"/>
				</c:when>
				<c:when test="${pessoa.bandeirante.entidade.ramo eq 'B2'}">
					<c:set var="rowClass" value="success" scope="page"/>
				</c:when>
				<c:when test="${pessoa.bandeirante.entidade.ramo eq 'GUIA'}">
					<c:set var="rowClass" value="danger" scope="page"/>
				</c:when>
				<c:otherwise>
					<c:set var="rowClass" value="default" scope="page"/>
				</c:otherwise>
			</c:choose>
			<tr class="${rowClass}">
				<td>${pessoa.id}</td>
				<td>${pessoa.nome}</td>
				<td>${pessoa.sexo}</td>
				<td>${pessoa.usuario.login}</td>
				<td>${pessoa.bandeirante.entidade.equipe.descricao}</td>
				<td>${pessoa.bandeirante.entidade.grupo.descricao}</td>
				<td>${pessoa.bandeirante.entidade.nucleo.descricao}</td>
				<td style="text-align: center;">
					<a href="${linkTo[CadastroController].form(pessoa.id, 'tab-pessoal')}" data-toggle="tooltip" data-placement="top" title="Editar Cadastro">
						<span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
					</a>
				</td>
			</tr>
		</c:forEach>
	</tbody>
</table>

<c:import url="/WEB-INF/jsp/footer.jsp"/>