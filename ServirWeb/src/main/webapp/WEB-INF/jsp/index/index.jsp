<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:import url="/WEB-INF/jsp/header.jsp" />
	<div class="row">
		<form class="col s12">
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
						<option value="" disabled selected>Selecione seu país de nascimento</option>
						<option value="BRA">Brasil</option>
						<option value="2">Option 2</option>
						<option value="3">Option 3</option>
					</select>
					<label for="nationality">Nacionalidade</label>
				</div>
			
				<div class="input-field col m4 s6">
					<input id="naturalidade" type="text" class="validate">
					<label for="naturalidade">Naturalidade</label>
				</div>
			</div>
			<div class="row">
				<div class="col s12">
					<div class="file-field input-field">
						<div class="btn">
							<span>File</span>
							<input type="file">
						</div>
						<div class="file-path-wrapper">
							<input class="file-path validate" type="text">
						</div>
					</div>
				</div>
			</div>
			<div>
				<input type="file" id="input-file-now" class="dropify" data-height="100" data-allowed-file-extensions="jpg jpeg png psd bmp">
				
			</div>
		</form>
	</div>
<c:import url="/WEB-INF/jsp/footer.jsp" />