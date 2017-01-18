package br.com.semperparata.servirweb.security;

import java.io.Serializable;

import javax.enterprise.context.SessionScoped;
import javax.inject.Named;

import br.com.semperparata.servirweb.model.Usuario;

@SuppressWarnings("serial")
@Named
@SessionScoped
public class UsuarioLogado implements Serializable {
	
	private Usuario usuario;
	private String url;
	
	public UsuarioLogado() {}
	
	public void efetuarLogin(Usuario usuario) {
		this.usuario = usuario;
	}
	
	public void deslogar() {
		this.usuario = null;
	}
	
	public boolean isLogado() {
		return this.usuario != null;
	}
	
	public Usuario getUsuario() {
		return usuario;
	}
	
	public String getUrl() {
		return this.url;
	}
	
	public void setUrl(String url) {
		this.url = url;
	}
}
