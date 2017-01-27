package br.com.semperparata.servirweb.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

import br.com.semperparata.servirweb.enums.Ramo;
import br.com.semperparata.servirweb.enums.TipoEntidade;

@Entity
public class Entidade implements Serializable {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	
	private String descricao;
	
	@Enumerated(EnumType.STRING)
	private TipoEntidade tipo;
	
	@Enumerated(EnumType.STRING)
	private Ramo ramo;
	
	@ManyToOne
	private Entidade pai;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public TipoEntidade getTipo() {
		return tipo;
	}

	public void setTipo(TipoEntidade tipo) {
		this.tipo = tipo;
	}

	public Ramo getRamo() {
		return ramo;
	}

	public void setRamo(Ramo ramo) {
		this.ramo = ramo;
	}

	public Entidade getPai() {
		return pai;
	}

	public void setPai(Entidade pai) {
		this.pai = pai;
	}
	
	public Entidade getEntidade(int nivel) {
		int nivelAtual = this.getTipo().getNivel();
		
		if(nivelAtual == nivel)
			return this;
		else if (nivelAtual > nivel)
			return pai.getEntidade(nivel);
		else
			return new Entidade();
	}
	
	public Entidade getEquipe() {
		return getEntidade(TipoEntidade.EQUIPE.getNivel());
	}
	
	public Entidade getGrupo() {
		return getEntidade(TipoEntidade.GRUPO.getNivel());
	}
	
	public Entidade getNucleo() {
		return getEntidade(TipoEntidade.NUCLEO.getNivel());
	}
	
	public Entidade getEstado() {
		return getEntidade(TipoEntidade.ESTADO.getNivel());
	}
}
