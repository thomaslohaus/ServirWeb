<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="servir" %>

<div class="panel panel-default">
	<div class="panel-body">
		<div class="row">
			<label class="col-md-3 control-label" for="numeroRegistro">Nr. de Registro Bandeirante</label>
			<div class="col-md-2 form-group-required" id="numeroRegistro">
				<input type="text" name="numeroRegistro" class="form-control" value="" />
			</div>
		</div>
		<div class="row">
			<label class="col-md-2 control-label" for="nucleo">Núcleo</label>
			<div class="col-md-3 form-group-required" id="nucleo">
				<select class="form-control">
					<c:forEach items="${nucleos}" var="nucleo">
						<c:set var="sel" value="${pessoa.bandeirante.entidade.nucleo.descricao eq nucleo.descricao ? 'selected':''}"></c:set>
						<option value="${nucleo.id}" ${sel}>${nucleo.descricao}</option>
					</c:forEach>
				</select>
			</div>
		</div>
		<div class="row">
			<label class="col-md-2 control-label" for="grupo">Grupo</label>
			<div class="col-md-3 form-group-required" id="grupo">
				<select class="form-control">
					<c:forEach items="${grupos}" var="grupo">
						<c:set var="sel" value="${pessoa.bandeirante.entidade.grupo.descricao eq grupo.descricao ? 'selected':''}"></c:set>
						<option value="${grupo.id}" ${sel}>${grupo.descricao}</option>
					</c:forEach>
				</select>
			</div>
			
			<label class="col-md-2 control-label" for="equipe">Equipe</label>
			<div class="col-md-3 form-group-required" id="equipe">
				<select class="form-control" name="pessoa.bandeirante.entidade">
					<c:forEach items="${equipes}" var="equipe">
						<c:set var="sel" value="${pessoa.bandeirante.entidade.equipe.descricao eq equipe.descricao ? 'selected':''}"></c:set>
						<option value="${equipe.id}" ${sel}>${equipe.descricao}</option>
					</c:forEach>
				</select>
			</div>
		</div>
	</div>
</div>
${pessoa.bandeirante.entidade.equipe.descricao}