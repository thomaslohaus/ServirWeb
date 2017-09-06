<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="servir"%>

<c:import url="/WEB-INF/jsp/cadastro/menu-saude.jsp" />



<div id="convenio-medico" class="section scrollspy">
	<h3>Cov�nio M�dico</h3>
	<div class="row fill-overflow">
		<div class="input-field col s12 m12">
			<label class="radio-group-label">Possui Conv�nio?</label>
			<div class="switch">
				<label>
					N�o
					<input id="possuiConvenio" type="checkbox" name="pessoa.fichaSaude.convenio" checked="${pessoa.fichaSaude.convenio}">
					<span class="lever"></span>
					Sim
				</label>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="input-field col s12 m5">
			<input disabled id="nome-convenio" type="text" name="pessoa.fichaSaude.convenioNome" value="${pessoa.fichaSaude.convenioNome}">
			<label for="nome-convenio">Nome Conv�nio M�dico</label>
		</div>
		<div class="input-field col s12 m5">
			<input disabled id="numero-convenio" type="text" name="pessoa.fichaSaude.convenioNumero" value="${pessoa.fichaSaude.convenioNumero}">
			<label for="numero-convenio">N�mero</label>
		</div>
		<div class="input-field col s12 m2">
			<input disabled id="validade-convenio" type="text" class="datepicker" name="pessoa.fichaSaude.convenioValidade"	value="<fmt:formatDate pattern="dd/MM/yyyy" value="${pessoa.fichaSaude.convenioValidade.time}" />">
			<label for="validade-convenio">Validade</label>
		</div>
	</div>
	<div class="row">
		<div class="input-field col s12 m5">
			<input disabled id="hospital-convenio" type="text" name="pessoa.fichaSaude.convenioHospital" value="${pessoa.fichaSaude.convenioHospital}">
			<label for="hospital-convenio">Hospital Preferencial</label>
		</div>
		<div class="input-field col s12 m5">
			<input disabled id="telefone-convenio" type="text" class="input-telefone" name="pessoa.fichaSaude.convenioTelefone" value="${pessoa.fichaSaude.convenioTelefone}">
			<label for="telefone-convenio">Telefone</label>
		</div>
	</div>
</div>
			
<div id="historico-saude" class="section scrollspy">
	<h3>Hist�rico de Sa�de</h3>
	<div class="row">
		<div class="input-field col s6 m3">
			<select id="grupo-sanguineo" name="pessoa.endereco.uf">
				<option value="" disabled selected>Grupo Sangu�neo</option>
				<c:forEach items="${gruposSanguineos}" var="grupo">
					<c:set var="sel" value="${pessoa.endereco.uf eq grupo.uf ? 'selected':''}"></c:set>
					<option value="${grupo.uf}" ${sel}>${grupo.descricao}</option>
				</c:forEach>
			</select>
			<label for="grupo-sanguineo">Grupo Sangu�neo</label>
		</div>
		<div class="input-field col s6 m3">
			<input id="peso" type="text" name="" value="">
			<label for="peso">Peso</label>
		</div>
	</div>
	<div class="row">
		<div class="input-field col s8 m4">
			<label>� alergico a algum medicamento (penicilina, sulfa, tetramicina, aspirina, novalgina, outros)?</label>
		</div>
		<div class="input-field col s4 m2">
			<div class="switch">
				<label>
					N�o
					<input id="temAlergiaMedicamento" type="checkbox" class="check-doencas" name="{pessoa.saude.possuiConvenio}">
					<span class="lever"></span>
					Sim
				</label>
			</div>
		</div>
		<div class="input-field col s12 m6">
			<textarea disabled id="detalhesAlergiaMedicamento" class="materialize-textarea" name="detalhesAlergiaMedicamento"></textarea>
			<label for="detalhesAlergiaMedicamento">Detalhes</label>
		</div>
	</div>
	<div class="row">
		<div class="input-field col s8 m4">
			<label>� alergico a p�, mofo, palha, picada, corante, alimentos, etc?</label>
		</div>
		<div class="input-field col s4 m2">
			<div class="switch">
				<label>
					N�o
					<input id="temAlergiaGeral" type="checkbox" class="check-doencas" name="{pessoa.saude.possuiConvenio}">
					<span class="lever"></span>
					Sim
				</label>
			</div>
		</div>
		<div class="input-field col s12 m6">
			<textarea disabled id="detalhesAlergiaGeral" class="materialize-textarea" name="detalhesAlergiaGeral"></textarea>
			<label for="detalhesAlergiaGeral">Detalhes</label>
		</div>
	</div>
	<div class="row">
		<div class="input-field col s8 m4">
			<label>Teve fratura entorse, luxa��o, les�o em ligamentos ou les�o muscular?</label>
		</div>
		<div class="input-field col s4 m2">
			<div class="switch">
				<label>
					N�o
					<input id="temFratura" type="checkbox" class="check-doencas" name="{pessoa.saude.possuiConvenio}">
					<span class="lever"></span>
					Sim
				</label>
			</div>
		</div>
		<div class="input-field col s12 m6">
			<textarea disabled id="detalhesFratura" class="materialize-textarea" name="detalhesFratura"></textarea>
			<label for="detalhesFratura">Detalhes</label>
		</div>
	</div>
	<div class="row">
		<div class="input-field col s8 m4">
			<label>Tem algum impedimento cr�nico ou cong�nito (visual, asma, bronquite, convuls�o, desmaios, etc)?</label>
		</div>
		<div class="input-field col s4 m2">
			<div class="switch">
				<label>
					N�o
					<input id="temImpedimentoCronico" type="checkbox" class="check-doencas" name="{pessoa.saude.possuiConvenio}">
					<span class="lever"></span>
					Sim
				</label>
			</div>
		</div>
		<div class="input-field col s12 m6">
			<textarea disabled id="detalhesImpedimentoCronico" class="materialize-textarea" name="detalhesImpedimentoCronico"></textarea>
			<label for="detalhesImpedimentoCronico">Detalhes</label>
		</div>
	</div>
	<div class="row">
		<div class="input-field col s8 m4">
			<label>Tem problema de ordem motora?</label>
		</div>
		<div class="input-field col s4 m2">
			<div class="switch">
				<label>
					N�o
					<input id="temProblemaMotor" type="checkbox" class="check-doencas" name="{pessoa.saude.possuiConvenio}">
					<span class="lever"></span>
					Sim
				</label>
			</div>
		</div>
		<div class="input-field col s12 m6">
			<textarea disabled id="detalhesProblemaMotor" class="materialize-textarea" name="detalhesProblemaMotor"></textarea>
			<label for="detalhesProblemaMotor">Detalhes</label>
		</div>
	</div>
	<div class="row">
		<div class="input-field col s8 m4">
			<label>Teve/tem problema card�aco?</label>
		</div>
		<div class="input-field col s4 m2">
			<div class="switch">
				<label>
					N�o
					<input id="temProblemaCardiaco" type="checkbox" class="check-doencas" name="{pessoa.saude.possuiConvenio}">
					<span class="lever"></span>
					Sim
				</label>
			</div>
		</div>
		<div class="input-field col s12 m6">
			<textarea disabled id="detalhesProblemaCardiaco" class="materialize-textarea" name="detalhesProblemaCardiaco"></textarea>
			<label for="detalhesProblemaCardiaco">Detalhes</label>
		</div>
	</div>
	<div class="row">
		<div class="input-field col s8 m4">
			<label>J� se submeteu a algum tipo de cirurgia?</label>
		</div>
		<div class="input-field col s4 m2">
			<div class="switch">
				<label>
					N�o
					<input id="temCirurgia" type="checkbox" class="check-doencas" name="{pessoa.saude.possuiConvenio}">
					<span class="lever"></span>
					Sim
				</label>
			</div>
		</div>
		<div class="input-field col s12 m6">
			<textarea disabled id="detalhesCirurgia" class="materialize-textarea" name="detalhesCirurgia"></textarea>
			<label for="detalhesCirurgia">Detalhes</label>
		</div>
	</div>
	<div class="row fill-overflow">
		<div class="input-field col s8 m4">
			<label>Tem diabetes?</label>
		</div>
		<div class="input-field col s4 m2">
			<div class="switch">
				<label>
					N�o
					<input id="temDiabetes" type="checkbox" class="check-doencas" name="{pessoa.saude.possuiConvenio}">
					<span class="lever"></span>
					Sim
				</label>
			</div>
		</div>
	</div>
	<div class="row">
		<h5>Doen�as que j� teve:</h5>
		<div class="fill-overflow input-field col s12 m12">
			<input type="checkbox" id="catapora" />
			<label class="checkbox-label" for="catapora">Catapora</label>
			
			<input type="checkbox" id="caxumba" />
			<label class="checkbox-label" for="caxumba">Caxumba</label>
			
			<input type="checkbox" id="coqueluche" />
			<label class="checkbox-label" for="coqueluche">Coqueluche</label>
			
			<input type="checkbox" id="hepatite" />
			<label class="checkbox-label" for="hepatite">Hepatite</label>
			
			<input type="checkbox" id="meningite" />
			<label class="checkbox-label" for="meningite">Meningite</label>
			
			<input type="checkbox" id="rubeola" />
			<label class="checkbox-label" for="rubeola">Rub�ola</label>
			
			<input type="checkbox" id="sarampo" />
			<label class="checkbox-label" for="sarampo">Sarampo</label>
		</div>
		<div class="input-field col s12 m12">
			<textarea id="outrasDoencas" class="materialize-textarea" name="outrasDoencas"></textarea>
			<label for="outrasDoencas">Outras Doen�as - detalhes</label>
		</div>
	</div>
</div>

<div id="medicacao" class="section scrollspy">
	<h3>Medica��o</h3>
	<div class="row">
		<div class="col s12 m8">
			<h5>Vacinas</h5>
			<table class="centered striped table-tight">
				<thead>
					<tr>
						<th>Vacina</th>
						<th>Tem</th>
						<th>Validade</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>Difteria</td>
						<td><input type="checkbox" id="temDifteria"/><label for="temDifteria"></label></td>
						<td><input type="text" class="datepicker table-datepicker" name="" ></td>
					</tr>
					<tr>
						<td>Febre Amarela</td>
						<td><input type="checkbox" id="temFebreAmarela"/><label for="temFebreAmarela"></label></td>
						<td><input type="text" class="datepicker table-datepicker" name="" ></td>
					</tr>
					<tr>
						<td>Hepatite A</td>
						<td><input type="checkbox" id="temHepatiteA"/><label for="temHepatiteA"></label></td>
						<td><input type="text" class="datepicker table-datepicker" name="" ></td>
					</tr>
					<tr>
						<td>Hepatite B</td>
						<td><input type="checkbox" id="temHepatiteB"/><label for="temHepatiteB"></label></td>
						<td><input type="text" class="datepicker table-datepicker" name="" ></td>
					</tr>
					<tr>
						<td>Meningite</td>
						<td><input type="checkbox" id="temMeningite"/><label for="temMeningite"></label></td>
						<td><input type="text" class="datepicker table-datepicker" name="" ></td>
					</tr>
					<tr>
						<td>Poliomelite</td>
						<td><input type="checkbox" id="temPoliomelite"/><label for="temPoliomelite"></label></td>
						<td><input type="text" class="datepicker table-datepicker" name="" ></td>
					</tr>
					<tr>
						<td>T�tano</td>
						<td><input type="checkbox" id="temTetano"/><label for="temTetano"></label></td>
						<td><input type="text" class="datepicker table-datepicker" name="" ></td>
					</tr>
					<tr>
						<td>Tifo</td>
						<td><input type="checkbox" id="temTifo"/><label for="temTifo"></label></td>
						<td><input type="text" class="datepicker table-datepicker" name="" ></td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
	<div class="row">
		<h5>J� tomou algum soro?</h5>
		<div class="fill-overflow input-field col s12 m5">
			<input type="checkbox" id="soro-antiofidico" />
			<label class="checkbox-label" for="soro-antiofidico">Antiof�dico</label>
			
			<input type="checkbox" id="soro-antitetanico" />
			<label class="checkbox-label" for="soro-antitetanico">Antitet�nico</label>
		</div>
		<div class="input-field col s12 m7">
			<textarea id="outrosSoros" class="materialize-textarea" name="outrosSoros"></textarea>
			<label for="outrosSoros">Outros Soros - detalhes</label>
		</div>
	</div>
	<div class="row">
		<h5>Faz uso de rem�dios?</h5>
		<div class="fill-overflow input-field col s12 m12">
			<input type="checkbox" id="remedios-nenhum" />
			<label class="checkbox-label" for="remedios-nenhum">Nenhum</label>
			
			<input type="checkbox" id="remedios-alopaticos" />
			<label class="checkbox-label" for="remedios-alopaticos">Alop�ticos</label>
			
			<input type="checkbox" id="remedios-homeopaticos" />
			<label class="checkbox-label" for="remedios-homeopaticos">Homeop�ticos</label>
		</div>
	</div>
	<div class="row">
		<h5>Rem�dios que toma atualmente:</h5>
		<div class="input-field col s12 m11">
			<table id="remedios-atuais" class="bordered centered table-tight">
				<thead>
					<tr>
						<th>Sintoma</th>
						<th>Rem�dio</th>
						<th>Dosagem</th>
						<th>Hor�rio</th>
						<th>Remover</th>
					</tr>
				</thead>
				<tbody>
				</tbody>
			</table>
		</div>
		<div class="input-field col s12 m1">
			<a id="adiciona-remedio-atual" class="btn-floating btn-large waves-effect waves-light green tooltipped" 
				data-position="right" data-delay="50" data-tooltip="Adicionar Rem�dio"><i class="material-icons">add</i></a>
		</div>
	</div>
</div>

<div id="atividades" class="section scrollspy">
	<h3>Atividades</h3>
	<div class="row">
		<div class="row fill-overflow">
			<div class="input-field col s12 m12">
				<label class="radio-group-label">Sabe nadar?</label>
				<div class="switch">
					<label>
						N�o
						<input id="sabeNadar" type="checkbox" name="{pessoa.saude.sabeNadar}">
						<span class="lever"></span>
						Sim
					</label>
				</div>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="row fill-overflow">
			<div class="input-field col s12 m6">
				<label class="radio-group-label">Requer algum cuidado especial?</label>
				<div class="switch">
					<label>
						N�o
						<input id="requerCuidadoEspecial" type="checkbox" name="{pessoa.saude.requerCuidadoEspecial}">
						<span class="lever"></span>
						Sim
					</label>
				</div>
			</div>
			<div class="input-field col s12 m6">
				<textarea id="detalhesCuidadosEspeciais" class="materialize-textarea" name="detalhesCuidadosEspeciais"></textarea>
				<label for="detalhesCuidadosEspeciais">Detalhes</label>
			</div>
		</div>
	</div>
	<div class="row">
		<h5>Possui alguma restri��o  f�sica a:</h5>
		<div class="fill-overflow input-field col s12 m6">
			<input type="checkbox" id="restricao-caminhadas" />
			<label class="checkbox-label" for="restricao-caminhadas">Caminhadas</label>
			
			<input type="checkbox" id="restricao-esportes" />
			<label class="checkbox-label" for="restricao-esportes">Esportes</label>
			
			<input type="checkbox" id="restricao-exercicios" />
			<label class="checkbox-label" for="restricao-exercicios">Exerc�cios Pesados</label>
		</div>
		<div class="input-field col s12 m6">
			<textarea id="outrasResticoes" class="materialize-textarea" name="outrasResticoes"></textarea>
			<label for="outrasResticoes">Outras Restri��es - detalhes</label>
		</div>
	</div>
	<div class="row">
		<div class="input-field col s12 m12">
			<textarea id="observacoes" class="materialize-textarea" name="observacoes"></textarea>
			<label for="observacoes">Observa��es</label>
		</div>
	</div>
</div>