package br.com.semperparata.servirweb.model;

import java.util.Calendar;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;

@Entity
public class Documentos {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@OneToOne(mappedBy = "documentos")
	private Pessoa pessoa;
	private String cpfNumero;
	private String cpgCopia;
	private String rgNumero;
	private String rgOrgaoExpeditor;
	private Calendar rgDataExpedicao;
	private String rgCopia;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Pessoa getPessoa() {
		return pessoa;
	}

	public void setPessoa(Pessoa pessoa) {
		this.pessoa = pessoa;
	}

	public String getCpfNumero() {
		return cpfNumero;
	}

	public void setCpfNumero(String cpfNumero) {
		this.cpfNumero = cpfNumero;
	}

	public String getCpgCopia() {
		return cpgCopia;
	}

	public void setCpgCopia(String cpgCopia) {
		this.cpgCopia = cpgCopia;
	}

	public String getRgNumero() {
		return rgNumero;
	}

	public void setRgNumero(String rgNumero) {
		this.rgNumero = rgNumero;
	}

	public String getRgOrgaoExpeditor() {
		return rgOrgaoExpeditor;
	}

	public void setRgOrgaoExpeditor(String rgOrgaoExpeditor) {
		this.rgOrgaoExpeditor = rgOrgaoExpeditor;
	}

	public Calendar getRgDataExpedicao() {
		return rgDataExpedicao;
	}

	public void setRgDataExpedicao(Calendar rgDataExpedicao) {
		this.rgDataExpedicao = rgDataExpedicao;
	}

	public String getRgCopia() {
		return rgCopia;
	}

	public void setRgCopia(String rgCopia) {
		this.rgCopia = rgCopia;
	}

}
