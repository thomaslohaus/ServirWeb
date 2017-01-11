<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="servir" %>

<c:import url="/WEB-INF/jsp/header.jsp"/>

<form class="form-signin" action="${linkTo[LoginController].autenticar(null, null)}" method="post">
	<div style="margin-bottom: 15px">
		<h2 style="display: inline-block">Login</h2>
		<img src="https://goo.gl/UIHGqD" style="min-height:50px; max-height:100px; display: inline-block; float: right;">
	</div>
	<label for="inputEmail" class="sr-only">E-mail</label>
	<input type="email" name="login" id="login" class="form-control" placeholder="E-mail" required autofocus>
	
	<label for="inputPassword" class="sr-only">Senha</label>
	<input type="password" name="senha" id="senha" class="form-control" placeholder="Senha" required>

	<button class="btn btn-lg btn-primary btn-block" type="submit">Login</button>
</form>
<style>
body {
  padding-top: 40px;
  padding-bottom: 40px;
  background-color: #eee;
}

.form-signin {
  max-width: 330px;
  padding: 15px;
  margin: 0 auto;
}
.form-signin .form-signin-heading,
.form-signin .checkbox {
  margin-bottom: 10px;
}
.form-signin .checkbox {
  font-weight: normal;
}
.form-signin .form-control {
  position: relative;
  height: auto;
  -webkit-box-sizing: border-box;
     -moz-box-sizing: border-box;
          box-sizing: border-box;
  padding: 10px;
  font-size: 16px;
}
.form-signin .form-control:focus {
  z-index: 2;
}
.form-signin input[type="email"] {
  margin-bottom: -1px;
  border-bottom-right-radius: 0;
  border-bottom-left-radius: 0;
}
.form-signin input[type="password"] {
  margin-bottom: 10px;
  border-top-left-radius: 0;
  border-top-right-radius: 0;
}

</style>
<c:import url="/WEB-INF/jsp/footer.jsp"/>