package br.com.semperparata.servirweb.controller;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.validator.SimpleMessage;
import br.com.caelum.vraptor.validator.Validator;
import br.com.semperparata.servirweb.dao.UsuarioDao;
import br.com.semperparata.servirweb.model.Usuario;
import br.com.semperparata.servirweb.security.NoAuth;
import br.com.semperparata.servirweb.security.UsuarioLogado;

@Controller
public class LoginController {
	
	private UsuarioDao usuarioDao;
	private UsuarioLogado usuarioLogado;
	private Result result;
	private Validator validator;

	public LoginController() {}
	
	@Inject
	public LoginController(UsuarioDao usuarioDao, UsuarioLogado usuarioLogado, Result result, Validator validator) {
		this.usuarioDao = usuarioDao;
		this.usuarioLogado = usuarioLogado;
		this.result = result;
		this.validator = validator;
	}
	
	@NoAuth
	@Path("/Login/{param}")
	public void form() {}
	
	@NoAuth
	public void autenticar(String login, String senha) {
		Usuario usuario = usuarioDao.buscar(login, senha);
		if (usuario != null) {
			usuarioLogado.efetuarLogin(usuario);
			result.redirectTo(IndexController.class).index();
		} else {
			validator.add(new SimpleMessage("login_invalido", "Login ou Senha inválidos"));
			validator.onErrorRedirectTo(this).form();
		}
	}
	
	@NoAuth
	public void deslogar() {
		usuarioLogado.deslogar();
		result.redirectTo(this).form();
	}
}
