<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="servir" %>

<script>
	
</script>

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
				<label class="col-md-offset-1 col-md-1 control-label" for="peso">Peso</label>
				<div class="col-md-2" id="peso">
					<input type="text" name="peso" class="form-control" value="" />
				</div>
			</div>
			<div>
				<div class="row">
					<label class="col-md-8 control-label" for="temAlergiaMedicamento">
						É alergico a algum medicamento (penicilina, sulfa, tetramicina, aspirina, novalgina, outros)?
					</label>
					<div class="col-md-2" id="temAlergiaMedicamento">
						<label class="radio-inline">
							<input type="radio" name="temAlergiaMedicamento" value="true" onchange="exibirDetalhes(this)" />Sim
						</label>
						<label class="radio-inline">
							<input type="radio" name="temAlergiaMedicamento" value="false" onchange="exibirDetalhes(this)" />Não
						</label>
					</div>
				</div>
				<div class="row" id="divDetalhesAlergiaMedicamento">
					<label class="col-md-1 control-label" for="detalhesAlergiaMedicamento">Detalhes</label>
					<div class="col-md-8" id="detalhesAlergiaMedicamento">
						<textarea rows="3" name="detalhesAlergiaMedicamento" class="form-control"></textarea>
					</div>
				</div>
			</div>
			
			<div>
				<div class="row">
					<label class="col-md-8 control-label" for="temAlergiaGeral">
						É alergico a pó, mofo, palha, picada, corante, alimentos, etc?
					</label>
					<div class="col-md-2" id="temAlergiaGeral">
						<label class="radio-inline">
							<input type="radio" name="temAlergiaGeral" value="true" onchange="exibirDetalhes(this)"/>Sim
						</label>
						<label class="radio-inline">
							<input type="radio" name="temAlergiaGeral" value="false" onchange="exibirDetalhes(this)"/>Não
						</label>
					</div>
				</div>
				<div class="row detalhes" id="divDetalhesAlergiaGeral">
					<label class="col-md-1 control-label" for="detalhesAlergiaGeral">Detalhes</label>
					<div class="col-md-8" id="detalhesAlergiaGeral">
						<textarea rows="3" name="detalhesAlergiaGeral" class="form-control"></textarea>
					</div>
				</div>
			</div>
			
			<div>
				<div class="row">
					<label class="col-md-8 control-label" for="temFratura">
						Teve fratura entorse, luxação, lesão em ligamentos ou lesão muscular?
					</label>
					<div class="col-md-2" id="temFratura">
						<label class="radio-inline">
							<input type="radio" name="temFratura" value="true" onchange="exibirDetalhes(this)" />Sim
						</label>
						<label class="radio-inline">
							<input type="radio" name="temFratura" value="false" onchange="exibirDetalhes(this)" />Não
						</label>
					</div>
				</div>
				<div class="row" id="divFratura">
					<label class="col-md-1 control-label" for="detalhesFratura">Detalhes</label>
					<div class="col-md-8" id="detalhesFratura">
						<textarea rows="3" name="detalhesFratura" class="form-control"></textarea>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
		