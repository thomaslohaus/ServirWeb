package br.com.semperparata.servirweb.infra;

import java.io.Serializable;

import javax.enterprise.context.SessionScoped;
import javax.inject.Named;

import br.com.semperparata.servirweb.model.Usuario;

@SuppressWarnings("serial")
@SessionScoped
@Named
public class UsuarioLogado implements Serializable {

    private Usuario usuario;

    public void fazLogin(Usuario usuario){
        this.usuario = usuario;
    }

    public void desloga(){
        this.usuario = null;
    }

    public Usuario getUsuario() {
    	if (usuario == null) {
    		usuario = new Usuario();
    		usuario.setId(1);
    		usuario.setLogin("thomas.lohaus@gmail.com");
    	}
        return this.usuario;
    }

    public boolean isLogado() {
        return this.usuario != null;
    }
}