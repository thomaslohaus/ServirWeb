package br.com.semperparata.servirweb.model;

import java.io.File;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;

public class Documentos {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	
	@OneToOne
	private Pessoa pessoa;
	
	private String cpfNumero;
	private File cpfCopia;
	
	private String rgNumero;
	private String rgOrgaoExpeditor;
	private String rgDataExpedicao;
	private File rgCopia;
	
	private String rneNumero;
	private String rneClassificacao;
	private String rneOrgaoExpeditor;
	private String rneDataExpedicao;
	private String rneDataValidade;
	private String rneDataEntrada;
	private File rneCopia;
	
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
	
	public File getCpfCopia() {
		return cpfCopia;
	}
	
	public void setCpfCopia(File cpfCopia) {
		this.cpfCopia = cpfCopia;
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
	
	public String getRgDataExpedicao() {
		return rgDataExpedicao;
	}
	
	public void setRgDataExpedicao(String rgDataExpedicao) {
		this.rgDataExpedicao = rgDataExpedicao;
	}
	
	public File getRgCopia() {
		return rgCopia;
	}
	
	public void setRgCopia(File rgCopia) {
		this.rgCopia = rgCopia;
	}
	
	public String getRneNumero() {
		return rneNumero;
	}
	
	public void setRneNumero(String rneNumero) {
		this.rneNumero = rneNumero;
	}
	
	public String getRneClassificacao() {
		return rneClassificacao;
	}
	
	public void setRneClassificacao(String rneClassificacao) {
		this.rneClassificacao = rneClassificacao;
	}
	
	public String getRneOrgaoExpeditor() {
		return rneOrgaoExpeditor;
	}
	
	public void setRneOrgaoExpeditor(String rneOrgaoExpeditor) {
		this.rneOrgaoExpeditor = rneOrgaoExpeditor;
	}
	
	public String getRneDataExpedicao() {
		return rneDataExpedicao;
	}
	
	public void setRneDataExpedicao(String rneDataExpedicao) {
		this.rneDataExpedicao = rneDataExpedicao;
	}
	
	public String getRneDataValidade() {
		return rneDataValidade;
	}
	
	public void setRneDataValidade(String rneDataValidade) {
		this.rneDataValidade = rneDataValidade;
	}
	
	public String getRneDataEntrada() {
		return rneDataEntrada;
	}
	
	public void setRneDataEntrada(String rneDataEntrada) {
		this.rneDataEntrada = rneDataEntrada;
	}
	
	public File getRneCopia() {
		return rneCopia;
	}
	
	public void setRneCopia(File rneCopia) {
		this.rneCopia = rneCopia;
	}
}
