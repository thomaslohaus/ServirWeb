<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ attribute name="menu" required="false" %>
<%@ attribute name="currentPage" required="false" %>

<!DOCTYPE html>
<html>
<head>
	<title>Servir Web || Gerenciamento de Bandeirantes</title>
	
	<meta name=viewport content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html;charset=utf-8">
	
	<link rel="icon" type="image/png" href="https://goo.gl/UIHGqD">
	
	<!--Import Google Icon Font-->
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
	
	<!-- Compiled and minified CSS -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.99.0/css/materialize.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Dropify/0.2.2/css/dropify.min.css">
		
	<link rel="stylesheet" href="<c:url value="/resources/css/servir.css"/>">
	<link rel="stylesheet" href="<c:url value="/resources/css/print.css"/>">
	
</head>
<body>
	<div class="navbar-fixed">
		<nav id="menu-principal" class="nav-extended indigo">
			<div class="nav-wrapper">
				<a href="#" class="brand-logo center">
					<span style="vertical-align: middle;">Servir Web</span>
				</a>
			</div>
			<div class="nav-content">
				<div class="overflow-menu">
					<ul>
				      <li><a class="btn-floating red"><i class="material-icons">insert_chart</i></a></li>
				      <li><a class="btn-floating yellow darken-1"><i class="material-icons">format_quote</i></a></li>
				      <li><a class="btn-floating green"><i class="material-icons">publish</i></a></li>
				      <li><a class="btn-floating blue"><i class="material-icons">attach_file</i></a></li>
				    </ul>
				</div>
			</div>
		</nav>
	</div>