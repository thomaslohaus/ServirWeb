<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="servir" %>

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
						<div class="fileUpload btn btn-success">
							<span class="glyphicon glyphicon-cloud-download" aria-hidden="true"></span>
						</div>
						<div class="fileUpload btn btn-primary">
							<span class="glyphicon glyphicon-cloud-upload" aria-hidden="true"></span>
							<input id="fileInput-Cpf" type="file" name="copiaCpf" class="upload">
						</div>
						<label id="uploadedFileName-Cpf"></label>
					</div>
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
						<div class="fileUpload btn btn-primary">
							<span class="glyphicon glyphicon-cloud-upload" aria-hidden="true"></span>
							<input id="fileInput-Rg" type="file" name="copiaRg" class="upload">
						</div>
						<label id="uploadedFileName-Rg"></label>
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