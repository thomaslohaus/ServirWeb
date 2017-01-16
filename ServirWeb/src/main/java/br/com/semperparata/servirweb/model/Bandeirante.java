package br.com.semperparata.servirweb.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class Bandeirante implements Serializable {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	
	@ManyToOne
	private Entidade entidade;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Entidade getEntidade() {
		return entidade;
	}

	public void setEntidade(Entidade entidade) {
		this.entidade = entidade;
	}
	
}
