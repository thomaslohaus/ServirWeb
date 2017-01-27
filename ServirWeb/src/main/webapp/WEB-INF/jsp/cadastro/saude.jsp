<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="servir" %>

<div class="panel panel-default">
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
				<div class="row" style="padding-top: 15px">
					<label class="col-md-3 control-label" for="temAlergiaMedicamento">
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
					<div class="col-md-5" id="detalhesAlergiaMedicamento">
						<textarea rows="3" name="detalhesAlergiaMedicamento" class="form-control" placeholder="Detalhes"></textarea>
					</div>
				</div>
			</div>
			
			<div class="row" style="padding-top: 15px">
				<label class="col-md-3 control-label" for="temAlergiaGeral">
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
				<div class="col-md-5" id="detalhesAlergiaGeral">
					<textarea rows="3" name="detalhesAlergiaGeral" class="form-control" placeholder="Detalhes"></textarea>
				</div>
			</div>
			
			<div>
				<div class="row" style="padding-top: 15px">
					<label class="col-md-3 control-label" for="temFratura">
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
					<div class="col-md-5" id="detalhesFratura">
						<textarea rows="3" name="detalhesFratura" class="form-control" placeholder="Detalhes"></textarea>
					</div>
				</div>
			</div>
			
			<div>
				<div class="row" style="padding-top: 15px">
					<label class="col-md-3 control-label" for="temImpedimentoCronico">
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
					<div class="col-md-5" id="detalhesImpedimentoCronico">
						<textarea rows="3" name="detalhesImpedimentoCronico" class="form-control" placeholder="Detalhes"></textarea>
					</div>
				</div>
			</div>
			
			<div>
				<div class="row" style="padding-top: 15px">
					<label class="col-md-3 control-label" for="temProblemaMotor">
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
					<div class="col-md-5" id="detalhesProblemaMotor">
						<textarea rows="3" name="detalhesProblemaMotor" class="form-control" placeholder="Detalhes"></textarea>
					</div>
				</div>
			</div>
			
			<div>
				<div class="row" style="padding-top: 15px">
					<label class="col-md-3 control-label" for="temProblemaCardiaco">
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
					<div class="col-md-5" id="detalhesProblemaCardiaco">
						<textarea rows="3" name="detalhesProblemaCardiaco" class="form-control" placeholder="Detalhes"></textarea>
					</div>
				</div>
			</div>
			
			<div>
				<div class="row" style="padding-top: 15px">
					<label class="col-md-3 control-label" for="temCirurgia">
						Já se submeteu a algum tipo de cirurgia?
					</label>
					<div class="col-md-2 radio" id="temCirurgia">
						<label class="radio-inline">
							<input type="radio" name="temCirurgia" value="true" onchange="exibirDetalhes(this)" />Sim
						</label>
						<label class="radio-inline">
							<input type="radio" name="temCirurgia" value="false" onchange="exibirDetalhes(this)" />Não
						</label>
					</div>
					<div class="col-md-5" id="detalhesCirurgia">
						<textarea rows="3" name="detalhesCirurgia" class="form-control" placeholder="Detalhes"></textarea>
					</div>
				</div>
			</div>
			
			<div>
				<div class="row" style="padding-top: 15px">
					<label class="col-md-3 control-label" for="temDiabetes">
						Tem diabetes?
					</label>
					<div class="col-md-2 radio" id="temDiabetes">
						<label class="radio-inline">
							<input type="radio" name="temDiabetes" value="true" />Sim
						</label>
						<label class="radio-inline">
							<input type="radio" name="temDiabetes" value="false" />Não
						</label>
					</div>
				</div>
			</div>
			
			<div class="row" style="padding-top: 15px">
				<label class="col-md-12 control-label" for="doencas">
					Doenças que já teve:
				</label>
				<div id="doencas" style="padding-left: 10px;">
					<div class="col-md-12" style="display: -webkit-inline-box;">
						<div class="input-group col-md-2" style="margin: 5px;">
							<span class="input-group-addon">
								<input type="checkbox" id="doenca-cat" aria-label="Catapora">
							</span>
							<input type="text" class="form-control" value="Catapora" readonly>
						</div>
						<div class="input-group col-md-2" style="margin: 5px;">
							<span class="input-group-addon">
								<input type="checkbox" id="doenca-cax" aria-label="Caxumba">
							</span>
							<input type="text" class="form-control" value="Caxumba" readonly>
						</div>
						<div class="input-group col-md-2" style="margin: 5px;">
							<span class="input-group-addon">
								<input type="checkbox" id="doenca-coc" aria-label="Coqueluche">
							</span>
							<input type="text" class="form-control" value="Coqueluche" readonly>
						</div>
						<div class="input-group col-md-2" style="margin: 5px;">
							<span class="input-group-addon">
								<input type="checkbox" id="doenca-hep" aria-label="Hepatite">
							</span>
							<input type="text" class="form-control" value="Hepatite" readonly>
						</div>
					</div>
					<div class="col-md-12" style="display: -webkit-inline-box;">
						<div class="input-group col-md-2" style="margin: 5px;">
							<span class="input-group-addon">
								<input type="checkbox" id="doenca-men" aria-label="Meningite">
							</span>
							<input type="text" class="form-control" value="Meningite" readonly>
						</div>
						<div class="input-group col-md-2" style="margin: 5px;">
							<span class="input-group-addon">
								<input type="checkbox" id="doenca-rub" aria-label="Rubéola">
							</span>
							<input type="text" class="form-control" value="Rubéola" readonly>
						</div>
						<div class="input-group col-md-2" style="margin: 5px;">
							<span class="input-group-addon">
								<input type="checkbox" id="doenca-sar" aria-label="Sarampo">
							</span>
							<input type="text" class="form-control" value="Sarampo" readonly>
						</div>
					</div>
					<div class="col-md-12 outra-doenca" style="display: -webkit-inline-box;">
						<div class="input-group col-md-2" style="margin: 5px;">
							<span class="input-group-addon">
								<input type="checkbox" aria-label="Outros">
							</span>
							<input type="text" class="form-control input-checkbox-doenca" placeholder="Outra: descreva" onblur="novaDoenca(this, 4)">
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<div class="panel panel-default">
	<div class="panel-body">
		<div class="col-md-12">
			<div class="row" style="padding-top: 15px">
				<label class="col-md-12 control-label" for="doencas">
					Vacinas já efetuadas:
				</label>
				<div class="col-md-8" style="padding-left: 25px;">
					<div class="panel panel-default">
						<table class="table table-bordered table-condensed table-striped">
							<thead>
								<tr class="default">
									<th>Vacina</th>
									<th>Tem</th>
									<th>Validade</th>
									<th style="text-align: center;">Remover</th>
								</tr>
							</thead>
							<tbody>
								<tr class="default vacinas">
									<td><input type="text" class="form-control" value="Difteria" readonly></td>
									<td><input type="checkbox" class="form-control"></td>
									<td><input type="text" class="form-control"></td>
									<td></td>
								</tr>
								<tr class="default vacinas">
									<td><input type="text" class="form-control" value="Febre Amarela" readonly></td>
									<td><input type="checkbox" class="form-control"></td>
									<td><input type="text" class="form-control"></td>
									<td></td>
								</tr>
								<tr class="default vacinas">
									<td><input type="text" class="form-control" value="Hepatite A" readonly></td>
									<td><input type="checkbox" class="form-control"></td>
									<td><input type="text" class="form-control"></td>
									<td></td>
								</tr>
								<tr class="default vacinas">
									<td><input type="text" class="form-control" value="Hepatite B" readonly></td>
									<td><input type="checkbox" class="form-control"></td>
									<td><input type="text" class="form-control"></td>
									<td></td>
								</tr>
								<tr class="default vacinas">
									<td><input type="text" class="form-control" value="Meningite" readonly></td>
									<td><input type="checkbox" class="form-control"></td>
									<td><input type="text" class="form-control"></td>
									<td></td>
								</tr>
								<tr class="default vacinas">
									<td><input type="text" class="form-control" value="Poliomelite" readonly></td>
									<td><input type="checkbox" class="form-control"></td>
									<td><input type="text" class="form-control"></td>
									<td></td>
								</tr>
								<tr class="default vacinas">
									<td><input type="text" class="form-control" value="Tétano" readonly></td>
									<td><input type="checkbox" class="form-control"></td>
									<td><input type="text" class="form-control"></td>
									<td></td>
								</tr>
								<tr class="default vacinas">
									<td><input type="text" class="form-control" value="Tifo" readonly></td>
									<td><input type="checkbox" class="form-control"></td>
									<td><input type="text" class="form-control"></td>
									<td></td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				<div class="col-md-2">
					<button type="button" class="btn btn-success" onclick="novaVacina()">
						<span class="glyphicon glyphicon-plus" aria-hidden="true"></span>
						Adicionar Vacina
					</button>
				</div>
					
				<div class="row" style="padding-top: 15px">
					<label class="col-md-12 control-label" for="soros">
						Já tomou algum soro?
					</label>
					<div id="soros" style="padding-left: 10px;">
						<div class="col-md-12" style="display: -webkit-inline-box;">
							<div class="input-group col-md-2" style="margin: 5px;">
								<span class="input-group-addon">
									<input type="checkbox" id="soro-antiofidico" aria-label="Antiofídico">
								</span>
								<input type="text" class="form-control" value="Antiofídico" readonly>
							</div>
							<div class="input-group col-md-2" style="margin: 5px;">
								<span class="input-group-addon">
									<input type="checkbox" id="soro-antitetanico" aria-label="Antitetânico">
								</span>
								<input type="text" class="form-control" value="Antitetânico" readonly>
							</div>
							<div class="col-md-4" style="margin: 5px; padding: 0px;" id="soro-outros">
								<input type="text" class="form-control" placeholder="Outros: Descreva">
							</div>
						</div>
					</div>
				</div>
					
				<div class="row" style="padding-top: 15px">
					<label class="col-md-12 control-label" for="tipos-remedio">
						Faz uso de remédios
					</label>
					<div id="tipos-remedio" style="padding-left: 10px;">
						<div class="col-md-12" style="display: -webkit-inline-box;">
							<div class="input-group col-md-2" style="margin: 5px;">
								<span class="input-group-addon">
									<input type="checkbox" id="remedio-nenhum" aria-label="Nenhum" onchange="tipoRemedio(this)">
								</span>
								<input type="text" class="form-control" value="Nenhum" readonly>
							</div>
							<div class="input-group col-md-2" style="margin: 5px;">
								<span class="input-group-addon">
									<input type="checkbox" id="remedio-alopaticos" aria-label="Alopáticos" onchange="tipoRemedio(this)">
								</span>
								<input type="text" class="form-control" value="Alopáticos" readonly>
							</div>
							<div class="input-group col-md-2" style="margin: 5px;">
								<span class="input-group-addon">
									<input type="checkbox" id="remedio-homeopaticos" aria-label="Homeopáticos" onchange="tipoRemedio(this)">
								</span>
								<input type="text" class="form-control" value="Homeopáticos" readonly>
							</div>
						</div>
					</div>
				</div>
					
				<div class="row" style="padding-top: 15px">
					<label class="col-md-12 control-label">
						Remédios que toma atualmente:
					</label>
					<div class="col-md-8" style="padding-left: 25px;">
					<div class="panel panel-default">
						<table class="table table-bordered table-condensed table-striped">
							<thead>
								<tr class="default">
									<th>Remédio</th>
									<th>Dosagem</th>
									<th>Horário</th>
									<th>Remover</th>
								</tr>
							</thead>
							<tbody>
								<tr class="default remedio-atual">
									<td><input type="text" class="form-control"></td>
									<td><input type="text" class="form-control"></td>
									<td><input type="text" class="form-control"></td>
									<td style="text-align: center;  vertical-align: middle;">
										<button type="button" class="btn btn-danger btn-xs" onclick="removerRemedio(this)">
											<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
										</button>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
					</div>
					<div class="col-md-2" style="padding-top: 15px">
						<button type="button" class="btn btn-success" onclick="novoRemedio('atual')">
							<span class="glyphicon glyphicon-plus" aria-hidden="true"></span>
							Adicionar Remédio
						</button>
					</div>
				</div>
					
				<div class="row" style="padding-top: 15px">
					<label class="col-md-12 control-label">
						Remédios ocasionais:
					</label>
					<div class="col-md-8" style="padding-left: 25px;">
						<div class="panel panel-default">
							<table class="table table-bordered table-condensed table-striped">
								<thead>
									<tr class="default">
										<th>Sintoma</th>
										<th>Remédio</th>
										<th>Dosagem</th>
										<th>Frequência</th>
										<th>Remover</th>
									</tr>
								</thead>
								<tbody>
									<tr class="default remedio-ocasional">
										<td><input type="text" class="form-control" value="Febre" readonly></td>
										<td><input type="text" class="form-control"></td>
										<td><input type="text" class="form-control"></td>
										<td><input type="text" class="form-control"></td>
										<td></td>
									</tr>
									<tr class="default remedio-ocasional">
										<td><input type="text" class="form-control" value="Dor de Cabeça" readonly></td>
										<td><input type="text" class="form-control"></td>
										<td><input type="text" class="form-control"></td>
										<td><input type="text" class="form-control"></td>
										<td></td>
									</tr>
									<tr class="default remedio-ocasional">
										<td><input type="text" class="form-control" value="Cólica Abdominal" readonly></td>
										<td><input type="text" class="form-control"></td>
										<td><input type="text" class="form-control"></td>
										<td><input type="text" class="form-control"></td>
										<td></td>
									</tr>
									<tr class="default remedio-ocasional">
										<td><input type="text" class="form-control" value="Dor de Garganta" readonly></td>
										<td><input type="text" class="form-control"></td>
										<td><input type="text" class="form-control"></td>
										<td><input type="text" class="form-control"></td>
										<td></td>
									</tr>
									<tr class="default remedio-ocasional">
										<td><input type="text" class="form-control" value="Enjôo/Vômito" readonly></td>
										<td><input type="text" class="form-control"></td>
										<td><input type="text" class="form-control"></td>
										<td><input type="text" class="form-control"></td>
										<td></td>
									</tr>
									<tr class="default remedio-ocasional">
										<td><input type="text" class="form-control" value="Alergia" readonly></td>
										<td><input type="text" class="form-control"></td>
										<td><input type="text" class="form-control"></td>
										<td><input type="text" class="form-control"></td>
										<td></td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
					<div class="col-md-2" style="padding-top: 15px">
						<button type="button" class="btn btn-success" onclick="novoRemedio('ocasional')">
							<span class="glyphicon glyphicon-plus" aria-hidden="true"></span>
							Adicionar Remédio
						</button>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<div class="panel panel-default">
	<div class="panel-body">
		<div class="col-md-12">
			<div class="row">	
				<div class="row" style="padding-top: 15px">
					<label class="col-md-3 control-label" for="sabeNadar">
						Sabe Nadar?
					</label>
					<div class="col-md-2 radio" id="sabeNadar">
						<label class="radio-inline">
							<input type="radio" name="sabeNadar" value="true" />Sim
						</label>
						<label class="radio-inline">
							<input type="radio" name="sabeNadar" value="false" />Não
						</label>
					</div>
				</div>
				
				<div class="row" style="padding-top: 15px">
					<label class="col-md-12 control-label" for="restricoes">
						Possui alguma restrição física a:
					</label>
					<div id="restricoes" style="padding-left: 10px;">
						<div class="col-md-12" style="display: -webkit-inline-box;">
							<div class="input-group col-md-2" style="margin: 5px;">
								<span class="input-group-addon">
									<input type="checkbox" id="restricao-caminhadas" aria-label="Caminhadas">
								</span>
								<input type="text" class="form-control" value="Caminhadas" readonly>
							</div>
							<div class="input-group col-md-2" style="margin: 5px;">
								<span class="input-group-addon">
									<input type="checkbox" id="restricao-esportes" aria-label="Esportes">
								</span>
								<input type="text" class="form-control" value="Esportes" readonly>
							</div>
							<div class="input-group col-md-3" style="margin: 5px;">
								<span class="input-group-addon">
									<input type="checkbox" id="restricao-exercicios" aria-label="Exercícios">
								</span>
								<input type="text" class="form-control" value="Exercícios Pesados" readonly>
							</div>
							<div class="col-md-4" style="margin: 5px; padding: 0px;" id="restricao-outros">
								<input type="text" class="form-control" placeholder="Outros: Descreva">
							</div>
						</div>
					</div>
				</div>
				
				<div class="row" style="padding-top: 15px">
					<label class="col-md-3 control-label" for="temCuidadoEspecial">
						Requer algum cuidado especial?
					</label>
					<div class="col-md-2 radio" id="temCuidadoEspecial">
						<label class="radio-inline">
							<input type="radio" name="temCuidadoEspecial" value="true" onchange="exibirDetalhes(this)"/>Sim
						</label>
						<label class="radio-inline">
							<input type="radio" name="temCuidadoEspecial" value="false" onchange="exibirDetalhes(this)"/>Não
						</label>
					</div>
					<div class="col-md-5" id="detalhesCuidadoEspecial">
						<textarea rows="3" name="detalhesCuidadoEspecial" class="form-control" placeholder="Detalhes"></textarea>
					</div>
				</div>
				
				<div class="row" style="padding-top: 15px">
					<label class="col-md-2 control-label" for="observacoes">
						Observações
					</label>
					<div class="col-md-8" id="observacoes">
						<textarea rows="3" name="observacoes" class="form-control" placeholder="Observações"></textarea>
					</div>
				</div>
				
			</div>
		</div>
	</div>
</div>
		