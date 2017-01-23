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
					<div class="col-md-2 radio" id="temAlergiaMedicamento">
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
					<div class="col-md-9" id="detalhesAlergiaMedicamento">
						<textarea rows="3" name="detalhesAlergiaMedicamento" class="form-control"></textarea>
					</div>
				</div>
			</div>
			
			<div>
				<div class="row">
					<label class="col-md-8 control-label" for="temAlergiaGeral">
						É alergico a pó, mofo, palha, picada, corante, alimentos, etc?
					</label>
					<div class="col-md-2 radio" id="temAlergiaGeral">
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
					<div class="col-md-9" id="detalhesAlergiaGeral">
						<textarea rows="3" name="detalhesAlergiaGeral" class="form-control"></textarea>
					</div>
				</div>
			</div>
			
			<div>
				<div class="row">
					<label class="col-md-8 control-label" for="temFratura">
						Teve fratura entorse, luxação, lesão em ligamentos ou lesão muscular?
					</label>
					<div class="col-md-2 radio" id="temFratura">
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
					<div class="col-md-9" id="detalhesFratura">
						<textarea rows="3" name="detalhesFratura" class="form-control"></textarea>
					</div>
				</div>
			</div>
			
			<div>
				<div class="row">
					<label class="col-md-8 control-label" for="temImpedimentoCronico">
						Tem algum impedimento crônico ou congênito (visual, asma, bronquite, convulsão, desmaios, etc)?
					</label>
					<div class="col-md-2 radio" id="temImpedimentoCronico">
						<label class="radio-inline">
							<input type="radio" name="temImpedimentoCronico" value="true" onchange="exibirDetalhes(this)" />Sim
						</label>
						<label class="radio-inline">
							<input type="radio" name="temImpedimentoCronico" value="false" onchange="exibirDetalhes(this)" />Não
						</label>
					</div>
				</div>
				<div class="row" id="divImpedimentoCronico">
					<label class="col-md-1 control-label" for="detalhesImpedimentoCronico">Detalhes</label>
					<div class="col-md-9" id="detalhesImpedimentoCronico">
						<textarea rows="3" name="detalhesImpedimentoCronico" class="form-control"></textarea>
					</div>
				</div>
			</div>
			
			<div>
				<div class="row">
					<label class="col-md-8 control-label" for="temProblemaMotor">
						Tem problema de ordem motora?
					</label>
					<div class="col-md-2 radio" id="temProblemaMotor">
						<label class="radio-inline">
							<input type="radio" name="temProblemaMotor" value="true" onchange="exibirDetalhes(this)" />Sim
						</label>
						<label class="radio-inline">
							<input type="radio" name="temProblemaMotor" value="false" onchange="exibirDetalhes(this)" />Não
						</label>
					</div>
				</div>
				<div class="row" id="divProblemaMotor">
					<label class="col-md-1 control-label" for="detalhesProblemaMotor">Detalhes</label>
					<div class="col-md-9" id="detalhesProblemaMotor">
						<textarea rows="3" name="detalhesProblemaMotor" class="form-control"></textarea>
					</div>
				</div>
			</div>
			
			<div>
				<div class="row">
					<label class="col-md-8 control-label" for="temProblemaCardiaco">
						Teve/tem problema cardíaco?
					</label>
					<div class="col-md-2 radio" id="temProblemaCardiaco">
						<label class="radio-inline">
							<input type="radio" name="temProblemaCardiaco" value="true" onchange="exibirDetalhes(this)" />Sim
						</label>
						<label class="radio-inline">
							<input type="radio" name="temProblemaCardiaco" value="false" onchange="exibirDetalhes(this)" />Não
						</label>
					</div>
				</div>
				<div class="row" id="divProblemaCardiaco">
					<label class="col-md-1 control-label" for="detalhesProblemaCardiaco">Detalhes</label>
					<div class="col-md-9" id="detalhesProblemaCardiaco">
						<textarea rows="3" name="detalhesProblemaCardiaco" class="form-control"></textarea>
					</div>
				</div>
			</div>
			
			<div>
				<div class="row">
					<label class="col-md-8 control-label" for="temDiabetes">
						Tem diabetes?
					</label>
					<div class="col-md-2 radio" id="temDiabetes">
						<label class="radio-inline">
							<input type="radio" name="temDiabetes" value="true" onchange="exibirDetalhes(this)" />Sim
						</label>
						<label class="radio-inline">
							<input type="radio" name="temDiabetes" value="false" onchange="exibirDetalhes(this)" />Não
						</label>
					</div>
				</div>
			</div>
			
			<div>
				<div class="row">
					<label class="col-md-12 control-label" for="doenças">
						Doenças que já teve:
					</label>
					<div class="col-md-12 checkbox" id="doencas">
						<div class="input-group col-md-2">
							<span class="input-group-addon">
								<input type="checkbox" aria-label="Cata">
							</span>
							<input type="text" class="form-control" value="Cata" readonly>
						</div>
						
						<label class="checkbox-inline">
							<input type="checkbox" name="doencas" value="Catapora" />Catapora
						</label>
						<label class="checkbox-inline">
							<input type="checkbox" name="doencas" value="Caxumba" />Caxumba
						</label>
						<label class="checkbox-inline">
							<input type="checkbox" name="doencas" value="Coqueluche" />Coqueluche
						</label>
						<label class="checkbox-inline">
							<input type="checkbox" name="doencas" value="Hepatite" />Hepatite
						</label>
						<label class="checkbox-inline">
							<input type="checkbox" name="doencas" value="Meningite" />Meningite
						</label>
						<label class="checkbox-inline">
							<input type="checkbox" name="doencas" value="Rubeola" />Rubéola
						</label>
						<label class="checkbox-inline">
							<input type="checkbox" name="doencas" value="Sarampo" />Sarampo
						</label>
					</div>
					<div class="row outra-doenca" style="margin-left: 0px;">
						<div class="input-group col-md-2">
							<span class="input-group-addon">
								<input type="checkbox" aria-label="Outros">
							</span>
							<input type="text" class="form-control" placeholder="Outra: descreva">
						</div>
					</div>
				</div>
			</div>
			
		</div>
	</div>
</div>
		