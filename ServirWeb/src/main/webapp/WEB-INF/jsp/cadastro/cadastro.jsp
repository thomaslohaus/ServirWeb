<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="servir"%>

<c:import url="/WEB-INF/jsp/header.jsp" />
<link rel="stylesheet" href="<c:url value="/resources/css/cadastro.css"/>">
<body>
	<!-- Navbar -->
	<div class="navbar-fixed page-header">
		<nav class="nav-extended indigo">
			<div class="nav-wrapper">
				<a href="#" class="brand-logo">
					<span class="page-title">${pessoa.id eq null ? 'Novo Cadastro' : pessoa.nome}</span>
				</a>
			</div>

			<div class="nav-content context-menu indigo darken-3">
				<ul class="tabs tabs-transparent tabs-fixed-width">
					<li class="tab"><a href="#tab-pessoal">Dados Pessoais</a></li>
					<li class="tab ${pessoa.id eq null ? 'disabled' : ''}"><a href="#tab-bandeirante">Ficha Bandeirante</a></li>
					<li class="tab ${pessoa.id eq null ? 'disabled' : ''}"><a href="#tab-saude">Ficha de Saúde</a></li>
					<li class="tab disabled">&nbsp;</li>
				</ul>
			</div>
		</nav>
	</div>
	<!-- Navbar -->
	
	<servir:menu />
	
	<!-- Content -->
	<main>
		<div class="container">
			<form action="${linkTo[CadastroController].salvar(null, null)}" method="post" enctype="multipart/form-data">
				<input type="hidden" name="pessoa.id" value="${pessoa.id}" />
				<input type="hidden" name="pessoa.endereco.id" value="${pessoa.endereco.id}" />
				<input type="hidden" name="pessoa.documentos.id" value="${pessoa.documentos.id}" />
				<input type="hidden" name="pessoa.fichaSaude.id" value="${pessoa.fichaSaude.id}" />
				
				<div class="fixed-action-btn fixed-top-tabs">
					<button class="btn-large btn-floating waves-effect waves-light teal" type="submit" name="action">
						<i class="material-icons">save</i>
					</button>
				</div>
				<div id="tab-pessoal">
					<c:import url="/WEB-INF/jsp/cadastro/pessoal.jsp" />
				</div>
				<div id="tab-bandeirante">
					band
				</div>
				<div id="tab-saude" class="col s12">
					<c:import url="/WEB-INF/jsp/cadastro/saude.jsp" />
				</div>
				
			</form>
		</div>
	</main>
	<!-- Content -->

</body>

<c:import url="/WEB-INF/jsp/footer.jsp" />