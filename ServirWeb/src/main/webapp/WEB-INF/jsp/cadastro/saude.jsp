<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="servir" %>

<script>
	
</script>

SAÚDE
<div class="panel panel-default">
	<div class="panel-heading">
		<b>Convênio Médico</b>
	</div>
	<div class="panel-body">
		<div class="col-md-12">
			<div class="row">
				<label class="col-md-2 control-label" for="temConvenio">Tem Convênio</label>
				<div class="col-md-3" id="temConvenio">
					<label class="radio-inline">
						<input type="radio" name="temConvenio" value="true" />Sim
					</label>
					<label class="radio-inline">
						<input type="radio" name="temConvenio" value="false" />Não
					</label>
				</div>
			</div>
			<div id="dadosConvenio">
				<div class="row">
					<label class="col-md-2 control-label" for="nomeConvenio">Convênio Médico</label>
					<div class="col-md-4" id="nomeConvenio">
						<input type="text" name="nomeConvenio" class="form-control" value="" />
					</div>
					<label class="col-md-2 control-label" for="numeroConvenio">Número</label>
					<div class="col-md-4" id="numeroConvenio">
						<input type="text" name="numeroConvenio" class="form-control" value="" />
					</div>
				</div>
				<div class="row">
					<label class="col-md-2 control-label" for="hospitalConvenio">Hospital Preferencial</label>
					<div class="col-md-4" id="hospitalConvenio">
						<input type="text" name="hospitalConvenio" class="form-control" value="" />
					</div>
					<label class="col-md-1 control-label" for="telefoneConvenio">Telefone</label>
					<div class="col-md-2" id="telefoneConvenio">
						<input type="text" name="telefoneConvenio" class="form-control" value="" />
					</div>
					<label class="col-md-1 control-label" for="validadeConvenio">Validade</label>
					<div class="col-md-2" id="validadeConvenio">
						<input type="date" name="validadeConvenio" class="form-control" value="" />
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="panel panel-default">
	<div class="panel-heading">
		<b>Dados Sobre a Saúde</b>
	</div>
	<div class="panel-body">
		<div class="col-md-12">
			<div class="row">
				<label class="col-md-2 control-label" for="grupoSanguineo">Grupo Sanguneo</label>
				<div class="col-md-2" id="grupoSanguineo">
					<select class="form-control">
						<option value="" label="" />
						<option value="A+" label="A +" />
						<option value="A-" label="A -" />
						<option value="B+" label="B +" />
						<option value="B-" label="B -" />
						<option value="AB+" label="AB +" />
						<option value="AB-" label="AB -" />
						<option value="O+" label="O +" />
						<option value="O-" label="O -" />
					</select>
				</div>
			</div>
		</div>
	</div>
</div>
		