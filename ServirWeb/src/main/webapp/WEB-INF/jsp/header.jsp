<!DOCTYPE html>
<html>
<head>
	<title>Servir Web || Gerenciamento de Bandeirantes</title>
	
	<meta name=viewport content="width=device-width, initial-scale=1">
	
	<link rel="icon" type="image/png" href="http://goo.gl/46DJuy">
	
	<!-- jQuery -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.8/jquery.mask.min.js"></script>
		
	<!-- Bootstrap -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
	<!-- MDL -->
	<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
	<link rel="stylesheet" href="https://code.getmdl.io/1.2.1/material.teal-indigo.min.css" />
	<script defer src="https://code.getmdl.io/1.2.1/material.min.js"></script>
</head>
<body>
	<nav class="navbar navbar-default navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
			  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
				<span class="sr-only">Toggle navigation</span>
				
			  </button>
			  <a class="navbar-brand" href="${linkTo[IndexController].index()}">Servir Web</a>
			  <a class="navbar-brand" href="${linkTo[CadastroController].lista()}">USUÁRIOS</a>
			</div>
        
			<div id="user-img" class="navbar-form navbar-right">
				<span>
				<img src="https://lh3.googleusercontent.com/-iE-ppzRWaQ4/AAAAAAAAAAI/AAAAAAAAAAA/AGNl-OqqfdJ5_WrBuUxJxiotvciEYPSC4g/s96-c-mo/photo.jpg" 
					class="img-circle" height="42" width="42">
				</span>
			</div><!--/.navbar-collapse -->
		</div>
	</nav>
	<div class="container" style="padding-top: 70px;">
		<main class="col-md-12">
			<!-- Conteúdo -->
	