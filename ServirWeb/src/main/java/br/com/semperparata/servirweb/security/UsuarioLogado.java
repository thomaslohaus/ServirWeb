package br.com.semperparata.servirweb.security;

import java.io.Serializable;

import javax.enterprise.context.SessionScoped;
import javax.inject.Inject;
import javax.inject.Named;
import javax.servlet.http.HttpServletRequest;

import br.com.semperparata.servirweb.model.Usuario;

@SuppressWarnings("serial")
@Named
@SessionScoped
public class UsuarioLogado implements Serializable {
	
	private Usuario usuario;
	private HttpServletRequest request;
	
	public UsuarioLogado() {}
	
	@Inject
	public UsuarioLogado(HttpServletRequest request) {
		this.request = request;
		
	}
	
	public void efetuarLogin(Usuario usuario) {
		this.usuario = usuario;
	}
	
	public void deslogar() {
		this.usuario = null;
		this.request.getSession().invalidate();
	}
	
	public boolean isLogado() {
		return this.usuario != null;
	}
	
	public Usuario getUsuario() {
		return usuario;
	}
}
