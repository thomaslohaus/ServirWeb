<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Ooops! Algo deu errado...</title>
	
	<!--Import Google Icon Font-->
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
	<!-- Compiled and minified CSS -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.99.0/css/materialize.min.css">
</head>
<body>
	<div class="row">
        <div class="col s12 m3 offset-m4">
          <div class="card">
            <div class="card-image">
              <img alt="" src="<c:url value="/resources/img/you-shall-not-pass-bp.jpg"/>"/>
              <span class="card-title">Caminho errado...</span>
            </div>
            <div class="card-content center-align">
              <p>Algo deu errado... Pedimos desculpas!</p>
              <p>Por favor, volte ao come�o da trilha</p>
            </div>
            <div class="card-action right-align">
               <a href="${linkTo[CadastroController].bandeirante()}" class="btn-floating btn-large waves-effect waves-light indigo"><i class="material-icons">adjust</i></a>
            </div>
          </div>
        </div>
      </div>
</body>
</html>