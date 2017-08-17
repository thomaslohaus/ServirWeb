<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="servir"%>

	<servir:header menu="cadastro-pessoal" />

	<servir:menu />
	<main>
	<div class="container">
		<form action="${linkTo[CadastroController].salvar(null, null)}" method="post" enctype="multipart/form-data">
			<input type="hidden" name="pessoa.id" value="${pessoa.id}" />
			<input type="hidden" name="pessoa.endereco.id" value="${pessoa.endereco.id}" />
			<input type="hidden" name="pessoa.documentos.id" value="${pessoa.documentos.id}" />
			
				<div class="row page-title">
					<div id="titulo" class="titulo col l12 m12">
						${pessoa.id eq null ? 'Novo Cadastro' : pessoa.nome}
					</div>
				</div>
<!-- 
					<div class="col l2 m2">
						<input id="foto34" name="foto34" type="file" class="dropify" data-height="100" data-allowed-file-extensions="jpg png jpeg gif" data-default-file="${pessoa.foto}">
					</div>
-->
					<div class="fixed-action-btn">
						<button class="btn waves-effect waves-light" type="submit" name="action">Salvar
							<i class="material-icons right">save</i>
						</button>
					</div>

				
				<div id="dados-pessoais" class="section scrollspy">
					<div class="row">
						<div class="input-field col s12 m8">
							<input id="nome-completo" type="text" name="pessoa.nome" value="${pessoa.nome}">
							<label for="nome-completo">Nome Completo</label>
						</div>
						<div class="input-field col s6 m4">
							<input id="data-nascimento" type="text" class="datepicker" name="pessoa.dataNascimento" value="<fmt:formatDate pattern="dd/MM/yyyy" value="${pessoa.dataNascimento.time}" />">
							<label for="data-nascimento">Data Nasc.</label>
						</div>
					</div>
					<div class="row">
						<div class="input-field col s6 m4">
							<select id="nacionalidade" name="pessoa.nacionalidade">
								<option value="" disabled selected>País</option>
								<c:forEach items="${paises}" var="pais">
									<c:set var="sel" value="${pessoa.nacionalidade eq pais.codigo ? 'selected':''}"></c:set>
									<option value="${pais.codigo}" ${sel}>${pais.descricao}</option>
								</c:forEach>
							</select>
							<label for="nacionalidade">Nacionalidade</label>
						</div>
						<div class="input-field col s6 m4">
							<select id="naturalidade" name="pessoa.naturalidade">
								<option value="" disabled selected>Estado</option>
								<c:forEach items="${estados}" var="estado">
									<c:set var="sel" value="${pessoa.naturalidade eq estado.uf ? 'selected':''}"></c:set>
									<option value="${estado.uf}" ${sel}>${estado.descricao}</option>
								</c:forEach>
							</select>
							<label for="naturalidade">Naturalidade</label>
						</div>
					</div>
					<div class="row">
						<div class="input-field col s6 m4">
							<select id="sexo" name="pessoa.sexo" class="required-field">
								<option value="" disabled selected>Sexo</option>
								<option value="F" ${pessoa.sexo eq 'F' ? 'selected':''}>Feminino</option>
								<option value="M" ${pessoa.sexo eq 'M' ? 'selected':''}>Masculino</option>
							</select>
							<label for="sexo">Sexo</label>
						</div>
						<div class="input-field col s6 m4">
							<select id="estado-civil" name="pessoa.estadoCivil" class="required-field">
								<option value="" disabled selected>Estado Civil</option>
								<option value="S" ${pessoa.estadoCivil eq 'S' ? 'selected':''}>Solteiro(a)</option>
								<option value="C" ${pessoa.estadoCivil eq 'C' ? 'selected':''}>Casado(a)</option>
							</select>
							<label for="estado-civil">Estado Civil</label>
						</div>
						
						<div class="input-field col s6 m4">
							<input id="religiao" type="text" class="autocomplete" name="pessoa.religiao" value="${pessoa.religiao}">
							<label for="religiao">Religião</label>
						</div>
					</div>
					<div class="row">
						<div class="input-field col s12 m6">
							<input id="email" type="email" name="pessoa.email" value="${pessoa.email}">
							<label for="email">E-mail</label>
						</div>
						<div class="input-field col s12 m6">
							<input id="celular" type="text" name="pessoa.celular" value="${pessoa.celular}">
							<label for="celular">Celular</label>
						</div>
					</div>
				</div>
							
				<div id="endereco" class="section scrollspy">
					<h3>Endereço</h3>
					<div class="row">
						<div class="input-field col s6 m4">
							<input id="end-cep" type="text" name="pessoa.endereco.cep" value="${pessoa.endereco.cep}">
							<label for="end-cep">CEP</label>
						</div>
						<div class="input-field col s6 m4">
							<a id="busca-cep" class="btn-floating btn-tiny waves-effect waves-light green tooltipped"
								data-position="top"
								data-delay="50"
								data-tooltip="Preencher Endereço pelo CEP">
									<i class="material-icons">search</i>
							</a>
							<a id="busca-endereco" class="btn-floating btn-tiny waves-effect waves-light yellow darken-1 tooltipped"
								data-position="top"
								data-delay="50"
								data-tooltip="Buscar Endereço de Familiares">
									<i class="material-icons">recent_actors</i>
							</a>
						</div>
					</div>
					<div class="row">
						<div class="input-field col s12 m6">
							<input id="end-logradouro" type="text" name="pessoa.endereco.logradouro" value="${pessoa.endereco.logradouro}">
							<label for="end-logradouro">Logradouro</label>
						</div>
						<div class="input-field col s6 m2">
							<input id="end-numero" type="text" name="pessoa.endereco.numero" value="${pessoa.endereco.numero}">
							<label for="end-numeroo">Número</label>
						</div>
						<div class="input-field col s6 m4">
							<input id="end-complemento" type="text" name="pessoa.endereco.complemento" value="${pessoa.endereco.complemento}">
							<label for="end-complemento">Complemento</label>
						</div>
					</div>
					<div class="row">
						<div class="input-field col s12 m5">
							<input id="end-bairro" type="text" name="pessoa.endereco.bairro" value="${pessoa.endereco.bairro}">
							<label for="end-bairro">Bairro</label>
						</div>
						<div class="input-field col s6 m4">
							<input id="end-cidade" type="text" name="pessoa.endereco.cidade" value="${pessoa.endereco.cidade}">
							<label for="end-cidade">Cidade</label>
						</div>
						<div class="input-field col s6 m3">
							<select id="end-uf" name="pessoa.endereco.uf">
								<option value="" disabled selected>Estado</option>
								<c:forEach items="${estados}" var="estado">
									<c:set var="sel" value="${pessoa.endereco.uf eq estado.uf ? 'selected':''}"></c:set>
									<option value="${estado.uf}" ${sel}>${estado.descricao}</option>
								</c:forEach>
							</select>
							<label for="end-uf">UF</label>
						</div>
					</div>
					<div class="row">
						<div class="input-field col s12 m4">
							<input id="end-telefone" type="text" name="pessoa.endereco.telefone" value="${pessoa.endereco.telefone}">
							<label for="end-telefone">Telefone Residencial</label>
						</div>
					</div>
				</div>
				
				<div id="documentos" class="section scrollspy">
					<h3>Documentos</h3>
					<div class="row">
						<div class="documento col s12 m12">
							<h5>CPF</h5>
							<div class="input-field col s10 m6">
								<input id="cpf-numero" type="text" name="pessoa.documentos.cpfNumero" value="${pessoa.documentos.cpfNumero}">
								<label for="cpf-numero">Número</label>
							</div>
							<div class="input-field col s2 m2 offset-m4 center">
								<a class="btn-floating blue"><i class="material-icons">attach_file</i></a>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="documento col s12 m12">
							<h5>RG</h5>
							<div class="input-field col s10 m6">
								<input id="rg-numero" type="text" name="pessoa.documentos.rgNumero" value="${pessoa.documentos.rgNumero}">
								<label for="rg-numero">Número</label>
							</div>
							<div class="input-field col s5 m2">
								<input id="rg-orgao" type="text" name="pessoa.documentos.rgOrgaoExpeditor" value="${pessoa.documentos.rgOrgaoExpeditor}">
								<label for="rg-orgao">Órgão Expeditor</label>
							</div>
							<div class="input-field col s5 m2">
								<input id="rg-data" type="text" class="datepicker" name="pessoa.documentos.rgDataExpedicao" 
									value="<fmt:formatDate pattern="dd/MM/yyyy" value="${pessoa.documentos.rgDataExpedicao.time}" />">
								<label for="rg-data">Data Expedição</label>
							</div>
							<div class="input-field col s2 m2 center">
								<a class="btn-floating blue"><i class="material-icons">attach_file</i></a>
							</div>
						</div>
					</div>
				</div>
			
		</form>
		<c:import url="/WEB-INF/jsp/cadastro/menu.jsp" />
	</div>
	</main>
<c:import url="/WEB-INF/jsp/footer.jsp" />