package br.com.semperparata.servirweb.model;

import java.io.File;
import java.io.Serializable;
import java.util.Calendar;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;

@SuppressWarnings("serial")
@Entity
public class Pessoa implements Serializable {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	
	private String nome;
	private Calendar dataNascimento;
	private String nacionalidade;
	private String naturalidade;
	private String sexo;
	private String estadoCivil;
	private String religiao;
	private String email;
	private String celular;
	private File foto;
	
	@OneToOne(mappedBy="pessoa")
	private Usuario usuario;
	
	@ManyToOne
	private Endereco endereco;
	
	@OneToOne
	private Documentos documentos;
	
	@OneToOne
	private FichaSaude fichaSaude;
	
	public Pessoa() {}
	
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

	public Calendar getDataNascimento() {
		return dataNascimento;
	}

	public void setDataNascimento(Calendar dataNascimento) {
		this.dataNascimento = dataNascimento;
	}

	public String getNacionalidade() {
		return nacionalidade;
	}

	public void setNacionalidade(String nacionalidade) {
		this.nacionalidade = nacionalidade;
	}

	public String getNaturalidade() {
		return naturalidade;
	}

	public void setNaturalidade(String naturalidade) {
		this.naturalidade = naturalidade;
	}

	public String getSexo() {
		return sexo;
	}

	public void setSexo(String sexo) {
		this.sexo = sexo;
	}

	public String getEstadoCivil() {
		return estadoCivil;
	}

	public void setEstadoCivil(String estadoCivil) {
		this.estadoCivil = estadoCivil;
	}

	public String getReligiao() {
		return religiao;
	}

	public void setReligiao(String religiao) {
		this.religiao = religiao;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getCelular() {
		return celular;
	}

	public void setFoto(File foto) {
		this.foto = foto;
	}
	
	public File getFoto() {
		return foto;
	}

	public void setCelular(String celular) {
		this.celular = celular;
	}

	public Usuario getUsuario() {
		return usuario;
	}

	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}

	public Endereco getEndereco() {
		return endereco;
	}

	public void setEndereco(Endereco endereco) {
		this.endereco = endereco;
	}

	public Documentos getDocumentos() {
		return documentos;
	}

	public void setDocumentos(Documentos documentos) {
		this.documentos = documentos;
	}

	public FichaSaude getFichaSaude() {
		return fichaSaude;
	}

	public void setFichaSaude(FichaSaude fichaSaude) {
		this.fichaSaude = fichaSaude;
	}
}
