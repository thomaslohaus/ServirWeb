package br.com.semperparata.servirweb.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;

import org.hibernate.validator.constraints.NotEmpty;

@SuppressWarnings("serial")
@Entity
public class Usuario implements Serializable {

	public Usuario() {}
	
	public Usuario(Pessoa pessoa) {
		this.pessoa = pessoa;
		this.login = pessoa.getEmail();
		this.senha = "";
		this.superUser = false;
	}
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	
	@NotEmpty
	private String login;
	
	private String senha;
	
	private boolean superUser;
	
	private String guid;
	
	@OneToOne
	private Pessoa pessoa;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getLogin() {
		return login;
	}

	public void setLogin(String login) {
		this.login = login;
	}

	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}

	public boolean isSuperUser() {
		return superUser;
	}

	public void setSuperUser(boolean superUser) {
		this.superUser = superUser;
	}

	public String getGuid() {
		return guid;
	}

	public void setGuid(String guid) {
		this.guid = guid;
	}

	public Pessoa getPessoa() {
		return pessoa;
	}

	public void setPessoa(Pessoa pessoa) {
		this.pessoa = pessoa;
	}
	
}
