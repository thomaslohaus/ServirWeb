package br.com.semperparata.servirweb.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class GrupoBandeirante {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String nome;
	@ManyToOne
	private NucleoBandeirante nucleo;
	@ManyToOne
	private RamoBandeirante ramo;
	private boolean ativo;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public NucleoBandeirante getNucleo() {
		return nucleo;
	}

	public void setNucleo(NucleoBandeirante nucleo) {
		this.nucleo = nucleo;
	}

	public RamoBandeirante getRamo() {
		return ramo;
	}

	public void setRamo(RamoBandeirante ramo) {
		this.ramo = ramo;
	}

	public boolean isAtivo() {
		return ativo;
	}

	public void setAtivo(boolean ativo) {
		this.ativo = ativo;
	}

}
