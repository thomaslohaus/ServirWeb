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
	
<style>
.nav-user-pop-up {
	display: none;
	background: #fafafa;
	border: 2px solid;
	border-color: #ccc;
	border-radius: 4px;
	overflow: hidden;
	position: absolute;
	right: 100px;
	top: 51px;
	white-space: nowrap;
	z-index: 1;
}
</style>
</head>
<body>
	<nav class="navbar navbar-default navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span>
				</button>
				<c:if test="${usuarioLogado.logado}">
					<a class="navbar-brand" href="${linkTo[IndexController].index()}">Servir Web</a>
					<a class="navbar-brand" href="${linkTo[CadastroController].lista()}">Cadastros</a>
				</c:if>
			</div>
        	
        	<c:if test="${usuarioLogado.logado}">
				<div id="user-img" class="navbar-form navbar-right">
					<span>
						<!-- <img src="https://lh3.googleusercontent.com/-iE-ppzRWaQ4/AAAAAAAAAAI/AAAAAAAAAAA/AGNl-OqqfdJ5_WrBuUxJxiotvciEYPSC4g/s96-c-mo/photo.jpg" 
							class="img-circle" height="42" width="42">
						 -->
						<a class="navbar-brand" style="padding: 5px; height: auto;" href="#">${usuarioLogado.usuario.pessoa.primeiroNome}</a>
					</span>
				</div>
			</c:if>
		</div>
		<div id="user-info-menu" class="container-fluid nav-user-pop-up">
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
			<!-- Conte�do -->
	