<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="servir"%>

<c:import url="/WEB-INF/jsp/header.jsp" />
	<form>
		<div id="content-panel">
			<div class="row page-title">
				<div class="col l10 m10">
					<h2>Cadastro</h2>
				</div>
				<div class="col l2 m2">
					<input id="foto34" type="file" id="input-file-now" class="dropify" data-height="100">
				</div>
			</div>
			
			<div id="dados-pessoais" class="row section scrollspy">
				<div class="row">
					<servir:inputText id="first_name" text="Nome Completo" col="s12"/>
				</div>
				<div class="row">
					<servir:inputText id="birthday" text="Data Nasc." type="date" classes="datepicker" col="m4 s4"/>
					<div class="input-field col m4 s4">
						<select id="nationality">
							<option value="" disabled selected>Selecione seu país de nascimento</option>
							<c:forEach items="${paises}" var="pais">
								<c:set var="sel" value="${pessoa.nacionalidade eq pais.codigo ? 'selected':''}"></c:set>
								<option value="${pais.codigo}" ${sel}>${pais.descricao}</option>
							</c:forEach>
						</select>
						<label for="nationality">Nacionalidade</label>
					</div>
					<div class="input-field col m4 s4">
						<select id="naturalidade" disabled>	
							<option value="" disabled selected>Selecione seu estado de nascimento</option>
							<c:forEach items="${estados}" var="estado">
								<c:set var="sel" value="${pessoa.naturalidade eq estado.uf ? 'selected':''}"></c:set>
								<option value="${estado.uf}" ${sel}>${estado.descricao}</option>
							</c:forEach>
						</select>
						<label for="naturalidade">Naturalidade (Estado)</label>
					</div>
				</div>
				<div class="row">
					<div class="input-field col m4 s4">
						<select id="gender" class="required-field">
							<option value="" disabled selected>Sexo</option>
							<option value="F">Feminino</option>
							<option value="M">Masculino</option>
						</select>
						<label for="gender">Sexo</label>
					</div>
					<div class="input-field col m4 s4">
						<select id="estado-civil" class="required-field">
							<option value="" disabled selected>Estado Civil</option>
							<option value="S">Solteiro(a)</option>
							<option value="C">Casado(a)</option>
						</select>
						<label for="estado-civil">Estado Civil</label>
					</div>
					<servir:inputText id="religion" text="Religião" classes="autocomplete" col="m4 s4" />
				</div>
				<div class="row">
					<servir:inputText id="email" text="E-mail" type="email" col="m6 s6" />
					<servir:inputText id="cellphone" text="Celular" col="m6 s6" />
				</div>
			</div>
			<div id="documentos" class="section scrollspy">
				<h2>documentos</h2>
				<p>Content </p>
				<p>Content </p>
				<p>Content </p>
				<p>Content </p>
				<p>Content </p>
				<p>Content </p>
				<p>Content </p>
				<p>Content </p>
				<p>Content </p>
				<p>Content </p>
				<p>Content </p>
				<p>Content </p>
				<p>Content </p>
				<p>Content </p>
				<p>Content </p>
				<p>Content </p>
				<p>Content </p>
				<p>Content </p>
			</div>
			<div id="endereco" class="section scrollspy">
				<h2>Endereço</h2>
				<p>Content </p>
				<p>Content </p>
				<p>Content </p>
				<p>Content </p>
				<p>Content </p>
				<p>Content </p>
				<p>Content </p>
				<p>Content </p>
				<p>Content </p>
				<p>Content </p>
				<p>Content </p>
				<p>Content </p>
				<p>Content </p>
				<p>Content </p>
				<p>Content </p>
				<p>Content </p>
				<p>Content </p>
				<p>Content </p>
			</div>
		</div>
	</form>
	<c:import url="/WEB-INF/jsp/cadastro/menu.jsp" />
<c:import url="/WEB-INF/jsp/footer.jsp" />