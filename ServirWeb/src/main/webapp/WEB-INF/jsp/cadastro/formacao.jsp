<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="servir" %>

<div class="panel panel-default">
	<div class="panel-body">
		<div class="row">
			<div class="col-md-12" class="has-feedback">
				<label class="col-md-2 control-label" for="escolaridade">Escolaridade</label>
				<div class="col-md-4" id="escolaridade">
					<select class="form-control">
						<option value="" label="" />
						<c:forEach items="${escolaridades}" var="esc">
							<option value="${esc.codigo}" label="${esc.descricao}" />
						</c:forEach>
					</select>
				</div>
				<label class="col-md-2 control-label" for="tipoInstituicao">Tipo da Instituição</label>
				<div class="col-md-2" id="tipoInstituicao">
					<select class="form-control">
						<option value="" label="" />
						<option value="PUBLICA" label="Pública" />
						<option value="PARTICULAR" label="Particular" />
					</select>
				</div>
			</div>
			<div class="col-md-12" class="has-feedback">
				<label class="col-md-2 control-label" for="instituicao">Instituição</label>
				<div class="col-md-8" id="instituicao">
					<input type="text" class="form-control" name="instituicao" value="" >
				</div>
			</div>
			<div class="col-md-12" class="has-feedback">
				<label class="col-md-2 control-label" for="curso">Curso</label>
				<div class="col-md-8" id="curso">
					<input type="text" class="form-control" name="curso" value="" >
				</div>
			</div>
		</div>
	</div>
</div>
<div class="panel panel-default">
	<div class="panel-body">
		<div class="row">
			<div class="col-md-12" class="has-feedback">
				<label class="col-md-2 control-label" for="profissao">Profissão</label>
				<div class="col-md-3" id="profissao">
					<input type="text" class="form-control" name="profissao" value="" >
				</div>
				<label class="col-md-2 control-label" for="cargo">Cargo</label>
				<div class="col-md-3" id="cargo">
					<input type="text" class="form-control" name="cargo" value="" >
				</div>
			</div>
			<div class="col-md-12" class="has-feedback">
				<label class="col-md-2 control-label" for="empresa">Empresa</label>
				<div class="col-md-3" id="empresa">
					<input type="text" class="form-control" name="empresa" value="" >
				</div>
				<label class="col-md-2 control-label" for="areaEmpresa">Área de Atuação</label>
				<div class="col-md-3" id="areaEmpresa">
					<input type="text" class="form-control" name="areaEmpresa" value="" >
				</div>
			</div>
			<div class="col-md-12" class="has-feedback">
				<label class="col-md-2 control-label" for="siteEmpresa">Site</label>
				<div class="col-md-5" id="siteEmpresa">
					<input type="text" class="form-control" name="siteEmpresa" value="" >
				</div>
			</div>
		</div>
	</div>
</div>
<div class="panel panel-default">
	<div class="panel-body">
	<label class="col-md-2 control-label" >Idiomas</label>
		<div class="row">
			<div class="col-md-12" class="has-feedback">
				<div>
					<div class="col-md-3">
						<input type="text" class="form-control" value="Português" readonly >
					</div>
					<div class="col-md-2">
						<select class="form-control" name="portugues">
							<option value="" label="" />
							<option value="MATERNA" label="Língua Materna" />
							<option value="FLUENTE" label="Fluente" />
							<option value="MEDIO" label="Intermediário" />
							<option value="BASICO" label="Básico" />
							<option value="NAO" label="Não Fala" />
						</select>
					</div>
				</div>
				<div>
					<div class="col-md-3">
						<input type="text" class="form-control" value="Inglês" readonly >
					</div>
					<div class="col-md-2">
						<select class="form-control" name="ingles">
							<option value="" label="" />
							<option value="MATERNA" label="Língua Materna" />
							<option value="FLUENTE" label="Fluente" />
							<option value="MEDIO" label="Intermediário" />
							<option value="BASICO" label="Básico" />
							<option value="NAO" label="Não Fala" />
						</select>
					</div>
				</div>
			</div>
			<div class="col-md-12" class="has-feedback">
				<div>
					<div class="col-md-3">
						<input type="text" class="form-control" value="Espanhol" readonly >
					</div>
					<div class="col-md-2">
						<select class="form-control" name="espanhol">
							<option value="" label="" />
							<option value="MATERNA" label="Língua Materna" />
							<option value="FLUENTE" label="Fluente" />
							<option value="MEDIO" label="Intermediário" />
							<option value="BASICO" label="Básico" />
							<option value="NAO" label="Não Fala" />
						</select>
					</div>
				</div>
				<div>
					<div class="col-md-3">
						<input type="text" class="form-control" value="Francês" readonly >
					</div>
					<div class="col-md-2">
						<select class="form-control" name="frances">
							<option value="" label="" />
							<option value="MATERNA" label="Língua Materna" />
							<option value="FLUENTE" label="Fluente" />
							<option value="MEDIO" label="Intermediário" />
							<option value="BASICO" label="Básico" />
							<option value="NAO" label="Não Fala" />
						</select>
					</div>
				</div>
			</div>
			<div class="col-md-12" class="has-feedback">
				<div>
					<div class="col-md-3">
						<input type="text" class="form-control" value="" placeholder="Outro: qual?">
					</div>
					<div class="col-md-2">
						<select class="form-control" name="outro1">
							<option value="" label="" />
							<option value="MATERNA" label="Língua Materna" />
							<option value="FLUENTE" label="Fluente" />
							<option value="MEDIO" label="Intermediário" />
							<option value="BASICO" label="Básico" />
							<option value="NAO" label="Não Fala" />
						</select>
					</div>
				</div>
				<div>
					<div class="col-md-3">
						<input type="text" class="form-control" value="" placeholder="Outro: qual?">
					</div>
					<div class="col-md-2">
						<select class="form-control" name="outro2">
							<option value="" label="" />
							<option value="MATERNA" label="Língua Materna" />
							<option value="FLUENTE" label="Fluente" />
							<option value="MEDIO" label="Intermediário" />
							<option value="BASICO" label="Básico" />
							<option value="NAO" label="Não Fala" />
						</select>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>