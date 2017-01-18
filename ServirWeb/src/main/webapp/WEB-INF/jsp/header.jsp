<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<title>Servir Web || Gerenciamento de Bandeirantes</title>
	
	<meta name=viewport content="width=device-width, initial-scale=1">
	
	<link rel="icon" type="image/png" href="https://goo.gl/UIHGqD">
	
	<!-- jQuery -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.8/jquery.mask.min.js"></script>
		
	<!-- Bootstrap -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
	<link rel="stylesheet" href="<c:url value="/resources/css/servir.css"/>">
	<script type="text/javascript" src="<c:url value="/resources/js/servir.js"/>"></script>
	
	<script type="text/javascript">
		function hideUserMenu() {
			$('#user-info-menu').hide();
		};
		
		function showUserMenu() {
			$('#user-info-menu').show();
		};
	</script>
	
</head>
<body>

	<nav class="navbar navbar-default navbar-fixed-top">
		<div class="container">
			<c:if test="${usuarioLogado.logado}">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
						<span class="sr-only">Toggle navigation</span>
				        <span class="icon-bar"></span>
				        <span class="icon-bar"></span>
				        <span class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="${linkTo[IndexController].index()}">Servir Web</a>
				</div>
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav nav-pills">
						<li>
							<a style="padding: 15px; font-size: 16px;" href="${linkTo[CadastroController].lista()}">Cadastros</a>
						</li>
						<li id="user-menu-img" style="float: right;">
							<a style="padding: 15px;">
								<label style="margin-bottom: 0px;">${usuarioLogado.usuario.pessoa.primeiroNome}</label>
								<span class="badge">3</span>
							</a>
						</li>
					</ul>
				</div>
			</c:if>
		</div>
		<div id="user-info-menu" class="container-fluid user-info-menu">
			<div style="float: right;">
				<button type="button" class="close" aria-label="Close" style="margin-top: 7px; margin-right: -5px;" onclick="hideUserMenu();">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div>
				<div style="display: inline-block; vertical-align: top; margin-top: 20px;">
					<span>
						<img src="https://lh3.googleusercontent.com/-iE-ppzRWaQ4/AAAAAAAAAAI/AAAAAAAAAAA/AGNl-OqqfdJ5_WrBuUxJxiotvciEYPSC4g/s96-c-mo/photo.jpg" 
							class="img-circle"
							style="height: 60px;"> 
					</span>
				</div>
				<div class="container-fluid" style="display: inline-block; vertical-align: top; margin-top: 20px;">
					<div class="text-right">
						<h4>${usuarioLogado.usuario.pessoa.nome}</h4>
					</div>
					<h5>${usuarioLogado.usuario.pessoa.email}</h5>
				</div>
			</div>
			<hr style="margin-bottom: 10px;">
			<div class="container-fluid" style="margin-bottom: 15px;">
				<a class="btn btn-info">Editar Conta</a>
				<a class="btn btn-danger" style="float: right;" href="${linkTo[LoginController].deslogar()}">Sair</a>
			</div>
		</div>
	</nav>
	<div class="container" style="padding-top: 70px;">
		<main class="col-md-12">
			<!-- Conteúdo -->
	