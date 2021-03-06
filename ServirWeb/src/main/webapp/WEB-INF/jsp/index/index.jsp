<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:import url="/WEB-INF/jsp/header.jsp" />
	<form>
		<div class="row">
			<div class="col m10">	
				<div class="row">
					<div class="input-field col s12">
						<input id="first_name" type="text" class="validate">
						<label for="first_name">Nome Completo</label>
					</div>
				</div>
				<div class="row">
					<div class="input-field col m4 s8">
						<input id="birthday" type="date" class="datepicker validate">
						<label for="birthday">Data Nasc.</label>
					</div>
					
					<div class="input-field col m4 s6">
						<select id="nationality">
							<option value="" disabled selected>Selecione seu pa�s de nascimento</option>
							<option value="BRA">Brasil</option>
							<option value="2">Option 2</option>
							<option value="3">Option 3</option>
						</select>
						<label for="nationality">Nacionalidade</label>
					</div>
				
					<div class="input-field col m4 s6">
						<input id="naturalidade" type="text" class="validate">
						<label for="naturalidade">Naturalidade (Estado)</label>
					</div>
				</div>
				<div class="row">
					<div class="input-field col m4 s4">
						<select id="gender">
							<option value="" disabled selected>Sexo</option>
							<option value="F">Feminino</option>
							<option value="M">Masculino</option>
						</select>
						<label for="gender">Sexo</label>
					</div>
					<div class="input-field col m4 s4">
						<select id="estado-civil">
							<option value="" disabled selected>Estado Civil</option>
							<option value="S">Solteiro(a)</option>
							<option value="C">Casado(a)</option>
						</select>
						<label for="estado-civil">Estado Civil</label>
					</div>
					<div class="input-field col m4 s4">
						<input id="religion" type="text" class="autocomplete validate">
						<label for="religion">Religi�o</label>
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
		</div>
	</form>
<c:import url="/WEB-INF/jsp/footer.jsp" />