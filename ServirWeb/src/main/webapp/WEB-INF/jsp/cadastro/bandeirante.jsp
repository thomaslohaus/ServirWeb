<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="servir"%>

<c:import url="/WEB-INF/jsp/header.jsp" />
	<form action="${linkTo[CadastroController].salvar(null, null)}" method="post" enctype="multipart/form-data">
		<input type="hidden" name="pessoa.id" value="${pessoa.id}" />
		<input type="hidden" name="pessoa.endereco.id" value="${pessoa.endereco.id}" />
		<div id="content-panel">
			<div class="row page-title">
				<div class="col l10 m10">
					<h2>${pessoa.id eq null ? 'Novo Cadastro' : pessoa.nome}</h2>
				</div>
				<div class="col l2 m2">
					<input id="foto34" name="foto34" type="file" class="dropify" data-height="100" data-allowed-file-extensions="jpg png jpeg gif" data-default-file="${pessoa.foto}">
				</div>
				<div class="fixed-action-btn">
					<button class="btn waves-effect waves-light" type="submit" name="action">Salvar
						<i class="material-icons right">send</i>
					</button>
				</div>
			</div>
			
			<div id="dados-pessoais" class="row scrollspy">
				<div class="row">
					<div class="input-field col s12">
						<input id="nome-completo" type="text" name="pessoa.nome" value="${pessoa.nome}">
						<label for="nome-completo">Nome Completo</label>
					</div>
				</div>
				<div class="row">
					<div class="input-field col m4 s4">
						<input id="data-nascimento" type="text" class="datepicker" name="pessoa.dataNascimento" value="<fmt:formatDate pattern="dd/MM/yyyy" value="${pessoa.dataNascimento.time}" />">
						<label for="data-nascimento">Data Nasc.</label>
					</div>
					<div class="input-field col m4 s4">
						<select id="nacionalidade" name="pessoa.nacionalidade">
							<option value="" disabled selected>País</option>
							<c:forEach items="${paises}" var="pais">
								<c:set var="sel" value="${pessoa.nacionalidade eq pais.codigo ? 'selected':''}"></c:set>
								<option value="${pais.codigo}" ${sel}>${pais.descricao}</option>
							</c:forEach>
						</select>
						<label for="nacionalidade">Nacionalidade</label>
					</div>
					<div class="input-field col m4 s4">
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
					<div class="input-field col m4 s4">
						<select id="sexo" name="pessoa.sexo" class="required-field">
							<option value="" disabled selected>Sexo</option>
							<option value="F" ${pessoa.sexo eq 'F' ? 'selected':''}>Feminino</option>
							<option value="M" ${pessoa.sexo eq 'M' ? 'selected':''}>Masculino</option>
						</select>
						<label for="sexo">Sexo</label>
					</div>
					<div class="input-field col m4 s4">
						<select id="estado-civil" name="pessoa.estadoCivil" class="required-field">
							<option value="" disabled selected>Estado Civil</option>
							<option value="S" ${pessoa.estadoCivil eq 'S' ? 'selected':''}>Solteiro(a)</option>
							<option value="C" ${pessoa.estadoCivil eq 'C' ? 'selected':''}>Casado(a)</option>
						</select>
						<label for="estado-civil">Estado Civil</label>
					</div>
					<div class="input-field col m4 s4">
						<input id="religiao" type="text" class="autocomplete" name="pessoa.religiao" value="${pessoa.religiao}">
						<label for="religiao">Religião</label>
					</div>
				</div>
				<div class="row">
					<div class="input-field col m6 s6">
						<input id="email" type="email" name="pessoa.email" value="${pessoa.email}">
						<label for="email">E-mail</label>
					</div>
					<div class="input-field col m6 s6">
						<input id="celular" type="text" name="pessoa.celular" value="${pessoa.celular}">
						<label for="celular">Celular</label>
					</div>
				</div>
			</div>
			
			<div id="cadastro-bandeirante" class="row scrollspy">
				<div class="col m12 s12">
					<div class="left">
						<h5>Cadastro Bandeirante - Grupo Atual</h5>
					</div>
					<div class="right">
						<a	class="btn-floating btn-small waves-effect waves-light indigo tooltipped"
							data-position="top"
							data-delay="50"
							data-tooltip="Visualizar Histórico"
							href="#historico-grupo-bandeirante">
								<i class="material-icons">list</i>
						</a>
					</div>
				</div>
				<div id="historico-grupo-bandeirante" class="modal modal-fixed-footer">
					<div class="modal-content">
						<h4>Histórico Bandeirante</h4>
						<p>A bunch of text</p>
					</div>
					<div class="modal-footer">
						<a href="#!" class="waves-effect waves-light btn"><i class="material-icons right">print</i>Imprimir</a>
						<a href="#!" class="modal-action modal-close waves-effect waves-light btn"><i class="material-icons right">done</i>Fechar</a>
					</div>
				</div>
				<div class="input-field col m3 s3">
					<select id="estado-bandeirante">
						<option value="" disabled selected>Estado</option>
						<c:forEach items="${estadosFBB}" var="estado">
							<c:set var="sel" value="${0 eq estado.id ? 'selected':''}"></c:set>
							<option value="${estado.id}" ${sel}>${estado.descricao}</option>
						</c:forEach>
					</select>
					<label for="estado-bandeirante">Estado</label>
				</div>
				<div class="input-field col m3 s3">
					<select id="nucleo-bandeirante" class="required-field">
						<option value="" disabled selected>Núcleo</option>
					</select>
					<label for="nucleo-bandeirante">Núcleo</label>
				</div>
				<div class="input-field col m3 s3">
					<select id="ramo-bandeirante" class="required-field">
						<option value="" disabled selected>Ramo</option>
						<option value="1">Ciranda</option>
						<option value="2">B1</option>
						<option value="3">B2</option>
						<option value="4">Guia</option>
						<option value="5">Guia-Auxiliar</option>
					</select>
					<label for="ramo-bandeirante">Ramo</label>
				</div>
				<div class="input-field col m3 s3">
					<select id="grupo-bandeirante" class="required-field">
						<option value="" disabled selected>Grupo</option>
					</select>
					<label for="grupo-bandeirante">Grupo</label>
				</div>
				<div id="bandeirante-loader" class="progress hide">
					<div class="indeterminate"></div>
				</div>
			</div>
			
			<div id="endereco" class="scrollspy">
				<h3>Endereço</h3>
				<div class="row">
					<div class="input-field col m4 s4">
						<input id="cep" type="text" name="pessoa.endereco.cep" value="${pessoa.endereco.cep}">
						<label for="cep">CEP</label>
					</div>
					<a id="busca-cep" class="btn-floating btn-tiny waves-effect waves-light indigo tooltipped"
						data-position="top"
						data-delay="50"
						data-tooltip="Preencher Endereço pelo CEP">
							<i class="material-icons">search</i>
					</a>
					<a id="busca-endereco" class="btn-floating btn-tiny waves-effect waves-light indigo tooltipped"
						data-position="top"
						data-delay="50"
						data-tooltip="Buscar Endereço de Familiares">
							<i class="material-icons">recent_actors</i>
					</a>
				</div>
				<div class="row">
					<div class="input-field col m6 s6">
						<input id="end-logradouro" type="text" name="pessoa.endereco.logradouro" value="${pessoa.endereco.logradouro}">
						<label for="end-logradouro">Logradouro</label>
					</div>
					<div class="input-field col m2 s2">
						<input id="end-numero" type="number" name="pessoa.endereco.numero" value="${pessoa.endereco.numero}">
						<label for="end-numeroo">Número</label>
					</div>
					<div class="input-field col m4 s4">
						<input id="end-complemento" type="text" name="pessoa.endereco.complemento" value="${pessoa.endereco.complemento}">
						<label for="end-complemento">Complemento</label>
					</div>
					<div class="input-field col m5 s5">
						<input id="end-bairro" type="text" name="pessoa.endereco.bairro" value="${pessoa.endereco.bairro}">
						<label for="end-bairro">Bairro</label>
					</div>
					<div class="input-field col m4 s4">
						<input id="end-cidade" type="text" name="pessoa.endereco.cidade" value="${pessoa.endereco.cidade}">
						<label for="end-cidade">Cidade</label>
					</div>
					<div class="input-field col m3 s3">
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
			</div>
			
			<div id="documentos" class="section scrollspy">
				<h3>Documentos</h3>
				<div class="row">
					<div class="col s12 m5" style="box-shadow: 0 2px 2px 0 rgba(0,0,0,0.14), 0 1px 5px 0 rgba(0,0,0,0.12), 0 3px 1px -2px rgba(0,0,0,0.2); border-radius: 2px;">
						<h5>CPF</h5>
						<div class="input-field col s12">
							<input id="cpf-numero" type="text">
							<label for="cpf-numero">Número</label>
						</div>
					</div>
					<div class="col s12 m5 offset-m1"  style="box-shadow: 0 2px 2px 0 rgba(0,0,0,0.14), 0 1px 5px 0 rgba(0,0,0,0.12), 0 3px 1px -2px rgba(0,0,0,0.2); border-radius: 2px;">
						<h5>RG</h5>
						<div class="input-field col s12">
							<input id="rg-numero" type="text">
							<label for="rg-numero">Número</label>
						</div>
						<div class="input-field col s12 m6">
							<input id="rg-orgao" type="text">
							<label for="rg-orgao">Órgão Expeditor</label>
						</div>
						<div class="input-field col s12 m6">
							<input id="data-nascimento" type="text" class="datepicker" id="rg-data">
							<label for="rg-data">Data Expedição</label>
						</div>
					</div>
				</div>
				<p>Content </p>
				<p>Content </p>
			</div>
		</div>
		
		
		<div id="loading-modal" class="modal">
			<div class="modal-content">
				<div class="preloader-wrapper big active">
      <div class="spinner-layer spinner-blue">
        <div class="circle-clipper left">
          <div class="circle"></div>
        </div><div class="gap-patch">
          <div class="circle"></div>
        </div><div class="circle-clipper right">
          <div class="circle"></div>
        </div>
      </div>

      <div class="spinner-layer spinner-red">
        <div class="circle-clipper left">
          <div class="circle"></div>
        </div><div class="gap-patch">
          <div class="circle"></div>
        </div><div class="circle-clipper right">
          <div class="circle"></div>
        </div>
      </div>

      <div class="spinner-layer spinner-yellow">
        <div class="circle-clipper left">
          <div class="circle"></div>
        </div><div class="gap-patch">
          <div class="circle"></div>
        </div><div class="circle-clipper right">
          <div class="circle"></div>
        </div>
      </div>

      <div class="spinner-layer spinner-green">
        <div class="circle-clipper left">
          <div class="circle"></div>
        </div><div class="gap-patch">
          <div class="circle"></div>
        </div><div class="circle-clipper right">
          <div class="circle"></div>
        </div>
      </div>
    </div>
			</div>
		</div>
	</form>
	<c:import url="/WEB-INF/jsp/cadastro/menu.jsp" />
<c:import url="/WEB-INF/jsp/footer.jsp" />