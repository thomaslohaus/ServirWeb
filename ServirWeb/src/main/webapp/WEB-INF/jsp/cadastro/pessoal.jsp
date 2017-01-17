<div class="panel panel-default">
	<div class="panel-body">
		<div class="row">
			<div class="col-md-10" class="has-feedback">
				<div class="row" style="margin-bottom: 5px">
					<label class="col-md-2 control-label" for="nome">Nome Completo</label>
					<div class="col-md-10 form-group-required" id="nome">
						<input type="text" name="pessoa.nome" class="form-control" value="${pessoa.nome}" placeholder="Campo Obrigatório" />
					</div>
				</div>
				<div class="row" style="margin-bottom: 5px">
					<label class="col-md-2 control-label" for="dataNascimento">Data Nasc.</label>
					<servir:validationMessage nome="pessoa.dataNascimento" />
					<div class="col-md-4" id="dataNascimento">
						<input type="date" name="pessoa.dataNascimento" class="form-control" value="${pessoa.dataNascimento}" placeholder="Campo Obrigatório" />
					</div>
				</div>
				
				<div class="row" style="margin-bottom: 5px">
					<label class="col-md-2 control-label" for="nacionalidade">Nacionalidade</label>
					<servir:validationMessage nome="pessoa.nacionalidade" />
					<div class="col-md-4 form-group-required" id="nacionalidade">
						<select name="pessoa.nacionalidade" class="form-control" onchange="validarPais()">
							<c:forEach items="${paises}" var="pais">
								<c:set var="sel" value="${pessoa.nacionalidade eq pais.codigo ? 'selected':''}"></c:set>
								<option value="${pais.codigo}" ${sel}>${pais.descricao}</option>
							</c:forEach>
						</select>
					</div>
					
					<label class="col-md-2 control-label" for="naturalidade">Naturalidade (Estado)</label>
					<servir:validationMessage nome="pessoa.naturalidade" />
					<div class="col-md-4 form-group-required" id="naturalidade">
						<select name="pessoa.naturalidade" class="form-control" onchange="removeBlankOption(this)" onfocus="removeBlankOption(this)">
							<option value="" label="Campo Obrigatório" />
							<c:forEach items="${estados}" var="estado">
								<c:set var="sel" value="${pessoa.naturalidade eq estado.uf ? 'selected':''}"></c:set>
								<option value="${estado.uf}" ${sel}>${estado.uf} - ${estado.descricao}</option>
							</c:forEach>
						</select>
					</div>
				</div>
				
				<div class="row" style="margin-bottom: 5px">
					<label class="col-md-2 control-label" for="sexo">Sexo</label>
					<servir:validationMessage nome="pessoa.sexo" />
					<div class="col-md-4 form-group-required" id="sexo">
						<select name="pessoa.sexo" class="form-control" onchange="removeBlankOption(this)" onfocus="removeBlankOption(this)">
							<option value="" label="Campo Obrigatório" />
							<c:forEach items="${sexos}" var="sexo">
								<c:set var="sel" value="${pessoa.sexo eq sexo ? 'selected':''}"></c:set>
								<option value="${sexo}" ${sel}>${sexo.descricao}</option>
							</c:forEach>
						</select>
					</div>
					
					<label class="col-md-2 control-label" for="estadoCivil">Estado Civil</label>
					<servir:validationMessage nome="pessoa.estadoCivil" />
					<div class="col-md-4 form-group-required" id="estadoCivil">
						<select name="pessoa.estadoCivil" class="form-control" onchange="removeBlankOption(this)" onfocus="removeBlankOption(this)">
							<option value="" label="Campo Obrigatório" />
							<c:forEach items="${estadosCivis}" var="estadoCivil">
								<c:set var="sel" value="${pessoa.estadoCivil eq estadoCivil ? 'selected':''}"></c:set>
								<option value="${estadoCivil}" ${sel}>${estadoCivil.descricao}</option>
							</c:forEach>
						</select>
					</div>
				</div>
				
				<div class="row" style="margin-bottom: 5px">
					<label class="col-md-2 control-label" for="religiao">Religião</label>
					<servir:validationMessage nome="pessoa.religiao" />
					<div class="col-md-4" id="religiao">
						<input type="text" name="pessoa.religiao" class="form-control" value="${pessoa.religiao}" />
					</div>
				</div>
				
				<div class="row" style="margin-bottom: 5px">
					<label class="col-md-2 control-label" for="email">E-mail</label>
					<servir:validationMessage nome="pessoa.email" />
					<div class="col-md-4 form-group-required" id="email">
						<input type="text" name="pessoa.email" class="form-control" value="${pessoa.email}" placeholder="Campo Obrigatório" />
					</div>
				
					<label class="col-md-2 control-label" for="celular">Celular</label>
					<servir:validationMessage nome="pessoa.celular" />
					<div class="col-md-4 form-group-required" id="celular">
						<input type="text" name="pessoa.celular" class="form-control" value="${pessoa.celular}" placeholder="Campo Obrigatório" />
					</div>
				</div>
				
			</div>
			<div class="col-md-2">
				<div class="col-md-11">
					<a href="#" class="thumbnail">
						<!-- <img src="https://lh3.googleusercontent.com/-iE-ppzRWaQ4/AAAAAAAAAAI/AAAAAAAAAAA/AGNl-OqqfdJ5_WrBuUxJxiotvciEYPSC4g/s96-c-mo/photo.jpg"-->
						<img src="http://goo.gl/46DJuy" 
							alt="Img"
							style="min-height:50px;max-height:150px;">
					</a>
				</div>
			</div>
		</div>		
	</div>
</div>

<div class="panel panel-default">
	<div class="panel-body" style="padding: 0px">
		<table class="table table-bordered" style="margin-bottom: 0px">
			<tr id="DocCpf">
				<td style="vertical-align: middle; text-align: center;">
					<h5 style="margin-top: 5px;"><b>CPF</b></h5>
				</td>
				<td>
					<div class="form-group">
						<label class="col-md-2 control-label" for="cpfNumero">Número</label>
						<div class="col-md-3" id="cpfNumero">
							<input type="text" name="pessoa.documentos.cpfNumero" class="form-control" 
								value="${pessoa.documentos.cpfNumero}" />
						</div>
					</div>
					<div class="fileUpload btn btn-primary">
						<span class="glyphicon glyphicon-cloud-upload" aria-hidden="true"></span>
						<input id="fileinput" type="file" name="photo" class="upload">
					</div>
					<label id="uploadedFileName"></label>
				</td>
			</tr>
			
			<tr id="DocRg">
				<td style="vertical-align: middle; text-align: center;">
					<h5 style="margin-top: 5px;"><b>RG</b></h5>
				</td>
				<td style="vertical-align: middle">
					<div class="form-group">
						<label class="col-md-2 control-label" for="rgNumero">Número</label>
						<div class="col-md-3" id="rgNumero">
							<input type="text" name="pessoa.documentos.rgNumero" class="form-control" 
								value="${pessoa.documentos.rgNumero}" />
						</div>
					</div>
					<br/> 
					<div class="form-group">
						<label class="col-md-2 control-label" for="rgOrgaoExpeditor">Órgão Expeditor</label>
						<div class="col-md-3 form-group-required" id="rgOrgaoExpeditor">
							<input type="text" name="pessoa.documentos.rgOrgaoExpeditor" class="form-control" 
								value="${pessoa.documentos.rgOrgaoExpeditor}" />
						</div>
						<label class="col-md-2 control-label" for="rgDataExpedicao">Data Expdição</label>
						<div class="col-md-3 form-group-required" id="rgDataExpedicao">
							<input type="date" name="pessoa.documentos.rgDataExpedicao" class="form-control" 
								value="${pessoa.documentos.rgDataExpedicao}" />
						</div>
					</div>
				</td>
			</tr>
			
			<tr id="DocRne">
				<td style="vertical-align: middle; text-align: center;">
					<h5 style="margin-top: 5px;"><b>RNE</b></h5>
				</td>
				<td style="vertical-align: middle">
					<div class="form-group">
						<label class="col-md-2 control-label" for="rneNumero">Número</label>
						<div class="col-md-3 form-group-required" id="rneNumero">
							<input type="text" name="pessoa.documentos.rneNumero" class="form-control" 
								value="${pessoa.documentos.rneNumero}" />
						</div>
					</div>
					<br/> 
					<div class="form-group">
						<label class="col-md-2 control-label" for="rneClassificacao">Classificação</label>
						<div class="col-md-3 form-group-required" id="rneClassificacao">
							<input type="text" name="pessoa.documentos.rneClassificacao" class="form-control" 
								value="${pessoa.documentos.rneClassificacao}" />
						</div>
						<label class="col-md-2 control-label" for="rneDataExpedicao">Data Expedição</label>
						<div class="col-md-3 form-group-required" id="rneDataExpedicao">
							<input type="date" name="pessoa.documentos.rneDataExpedicao" class="form-control" 
								value="${pessoa.documentos.rneDataExpedicao}" />
						</div>
					</div>
					<br/> 
					<div class="form-group">
						<label class="col-md-2 control-label" for="rneDataValidade">Data Validade</label>
						<div class="col-md-3 form-group-required" id="rneDataValidade">
							<input type="date" name="pessoa.documentos.rneDataValidade" class="form-control" 
								value="${pessoa.documentos.rneDataValidade}" />
						</div>
						<label class="col-md-2 control-label" for="rneDataEntrada">Data Entrada</label>
						<div class="col-md-3 form-group-required" id="rneDataEntrada">
							<input type="date" name="pessoa.documentos.rneDataEntrada" class="form-control" 
								value="${pessoa.documentos.rneDataEntrada}" />
						</div>
					</div>
				</td>
			</tr>
		</table>
	</div>
</div>