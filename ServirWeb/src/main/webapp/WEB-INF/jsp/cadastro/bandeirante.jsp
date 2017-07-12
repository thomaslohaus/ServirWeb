<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:import url="/WEB-INF/jsp/header.jsp" />
	<form>
		<h2>Cadastro</h2>
<div class="row">
	<div class="col s12 indigo-text">
		<ul class="tabs">
			<li class="tab col s3"><a class="active" href="#test1">Test 1</a></li>
			<li class="tab col s3"><a href="#test2">Test 2</a></li>
		</ul>
	</div>

		<div id="test1" class="row">
			<div class="col m10">	
				<div class="row">
					<div class="input-field col s12">
						<input id="first_name" type="text" class="validate">
						<label for="first_name">Nome Completo</label>
					</div>
				</div>
				<div class="row">
					<div class="input-field col m4 s8">
						<input id="birthday" type="date" class="datepicker">
						<label for="birthday">Data Nasc.</label>
					</div>
					
					<div class="input-field col m4 s6">
						<select id="nationality">
							<option value="" disabled selected>Selecione seu país de nascimento</option>
							<c:forEach items="${paises}" var="pais">
								<c:set var="sel" value="${pessoa.nacionalidade eq pais.codigo ? 'selected':''}"></c:set>
								<option value="${pais.codigo}" ${sel}>${pais.descricao}</option>
							</c:forEach>
						</select>
						<label for="nationality">Nacionalidade</label>
					</div>
					<div class="input-field col m4 s6">
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
					<div class="input-field col m4 s4">
						<input id="religion" type="text" class="autocomplete validate">
						<label for="religion">Religião</label>
					</div>
				</div>
				<div class="row">
					<div class="input-field col m6 s6">
						<input id="email" type="email" class="validate">
						<label for="email">E-mail</label>
					</div>
					<div class="input-field col m4 s4">
						<input id="cellphone" type="text" class="validate">
						<label for="cellphone">Celular</label>
					</div>
				</div>
			</div>
			<div class="col m2">
				<div class="row">
					<label for="foto">Foto</label>
					<input id="foto" type="file" id="input-file-now" class="dropify" data-height="100">
				</div>
			</div>
		</div>
</div>
<div id="test2" class="col s12">Test 2</div>
	</form>
<c:import url="/WEB-INF/jsp/footer.jsp" />