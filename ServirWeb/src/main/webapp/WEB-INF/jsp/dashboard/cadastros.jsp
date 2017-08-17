<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="servir"%>

<servir:header />
	<div class="container">
	<!-- Conteúdo -->
		<div id="content-panel">
			<ul class="collection">
				<c:forEach items="${pessoas}" var="p">
					<li class="collection-item avatar">
						<i class="material-icons circle green">person</i>
						<span class="title" style="font-weight: bold;">${p.nome}</span>
						<p>${p.email}</p>
						<div class="secondary-content">
							<a	class="btn-floating waves-effect waves-light tooltipped light-blue darken-3" 
								data-position="top"
								data-delay="50"
								data-tooltip="Dados Pessoais"
								href="${linkTo[CadastroController].pessoal(p.id)}">
									<i class="material-icons">person</i>
							</a>
							
							<a	class="btn-floating waves-effect waves-light tooltipped green" 
								data-position="top"
								data-delay="50"
								data-tooltip="Dados Bandeirantes"
								href="${linkTo[CadastroController].pessoal(p.id)}">
									<i class="material-icons">filter_hdr</i>
							</a>
							
							<a	class="btn-floating waves-effect waves-light tooltipped red darken-1" 
								data-position="top"
								data-delay="50"
								data-tooltip="Ficha de Saúde"
								href="">
									<i class="material-icons">local_hospital</i>
							</a>
						</div>
					</li>
				</c:forEach>
			</ul>
		</div>
	</div>
<c:import url="/WEB-INF/jsp/footer.jsp" />