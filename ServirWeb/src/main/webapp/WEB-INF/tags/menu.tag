<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ attribute name="activeTab" required="false" %>
<%@ attribute name="parentTab" required="false" %>

<div>
	<ul id="nav-mobile" class="side-nav fixed collection" style="transform: translateX(0%);">
		<li class="logo">
			<div class="nav-wrapper indigo center">
				<a href="/" class="brand-logo">
					<img class="responsive-img imagem-titulo" src="https://goo.gl/UIHGqD">
					<span class="white-text texto-titulo">Servir Web</span>
				</a>
			</div>
		</li>
		<li class="collection-item menu-user">
			<div class="center">
				<p style="font-size: 1.1em;">${usuarioLogado.usuario.login}</p>
				
				<a class="btn waves-effect waves-light">Editar</a>
				<a class="btn waves-effect waves-light red darken-2">Logout</a>
			</div>
		</li>
		<li class="menu-title center">
			<h5>MENU</h5>
		</li>
		<li class="menu-single">
			<a href="${linkTo[CadastroController].lista()}" class="waves-effect waves-teal">Cadastros</a>
		</li>
		<li class="menu-single">
			<a href="getting-started.html" class="waves-effect waves-teal">Getting Started</a>
		</li>
		<li>&nbsp;</li>
<!-- 
		<li class="menu-multiple">
			<ul class="collapsible collapsible-accordion">
				<li ><a class="collapsible-header waves-effect waves-teal">CSS</a>
					<div class="collapsible-body" style="display: block;">
						<ul>
							<li class="active"><a href="color.html">Color</a></li>
							<li><a href="grid.html">Grid</a></li>
							<li><a href="helpers.html">Helpers</a></li>
							<li><a href="media-css.html">Media</a></li>
							<li><a href="pulse.html">Pulse</a></li>
							<li><a href="sass.html">Sass</a></li>
							<li><a href="shadow.html">Shadow</a></li>
							<li><a href="table.html">Table</a></li>
							<li><a href="css-transitions.html">Transitions</a></li>
							<li><a href="typography.html">Typography</a></li>
						</ul>
					</div>
				</li>
				<li><a class="collapsible-header waves-effect waves-teal">Components</a>
					<div class="collapsible-body">
						<ul>
							<li><a href="badges.html">Badges</a></li>
							<li><a href="buttons.html">Buttons</a></li>
							<li><a href="breadcrumbs.html">Breadcrumbs</a></li>
							<li><a href="cards.html">Cards</a></li>
							<li><a href="chips.html">Chips</a></li>
							<li><a href="collections.html">Collections</a></li>
							<li><a href="footer.html">Footer</a></li>
							<li><a href="forms.html">Forms</a></li>
							<li><a href="icons.html">Icons</a></li>
							<li><a href="navbar.html">Navbar</a></li>
							<li><a href="pagination.html">Pagination</a></li>
							<li><a href="preloader.html">Preloader</a></li>
						</ul>
					</div>
				</li>
				<li><a class="collapsible-header waves-effect waves-teal">JavaScript</a>
					<div class="collapsible-body">
						<ul>
							<li><a href="carousel.html">Carousel</a></li>
							<li><a href="collapsible.html">Collapsible</a></li>
							<li><a href="dialogs.html">Dialogs</a></li>
							<li><a href="dropdown.html">Dropdown</a></li>
							<li><a href="feature-discovery.html">FeatureDiscovery</a></li>
							<li><a href="media.html">Media</a></li>
							<li><a href="modals.html">Modals</a></li>
							<li><a href="parallax.html">Parallax</a></li>
							<li><a href="pushpin.html">Pushpin</a></li>
							<li><a href="scrollfire.html">ScrollFire</a></li>
							<li><a href="scrollspy.html">Scrollspy</a></li>
							<li><a href="side-nav.html">SideNav</a></li>
							<li><a href="tabs.html">Tabs</a></li>
							<li><a href="transitions.html">Transitions</a></li>
							<li><a href="waves.html">Waves</a></li>
						</ul>
					</div>
				</li>
			</ul>
		</li>
		<li class="menu-single">
			<a href="mobile.html" class="waves-effect waves-teal">Mobile</a>
		</li>
		<li class="menu-single">
			<a href="showcase.html" class="waves-effect waves-teal">Showcase</a>
		</li>
		<li class="menu-single">
			<a href="themes.html" class="waves-effect waves-teal">Themes<span class="new badge"></span></a>
		</li>
-->
	</ul>
</div>
