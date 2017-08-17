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