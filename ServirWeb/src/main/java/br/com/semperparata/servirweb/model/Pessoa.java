package br.com.semperparata.servirweb.model;

import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;

import br.com.semperparata.servirweb.enums.EstadoCivil;
import br.com.semperparata.servirweb.enums.Sexo;

@Entity
public class Pessoa implements Serializable {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	
	@NotEmpty
	private String nome;
	
	@Email
	private String email;
	
	private String celular;
	
	private String dataNascimento;
	
	private String nacionalidade;
	
	private String naturalidade;
	
	@Enumerated(EnumType.STRING)
	private Sexo sexo;
	
	@Enumerated(EnumType.STRING)
	private EstadoCivil estadoCivil;
	
	private String religiao;
	
	private String escolaridade;
	
	private String nomeInstituicaoEnsino;
	
	private String tipoInstituicaoEnsino;
	
	private String nomeCurso;
	
	private String profissao;
	
	private String empresa;
	
	@OneToOne(mappedBy = "pessoa")
	private Usuario usuario;
	
	@OneToOne(targetEntity=Bandeirante.class, cascade=CascadeType.ALL)
	private Bandeirante bandeirante; 
	
	@ManyToOne
	private Endereco endereco;
	
	@OneToOne(targetEntity=Documentos.class, cascade=CascadeType.ALL)
	private Documentos documentos;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}
	
	public String getPrimeiroNome() {
		return nome.split(" ")[0];
	}

	public void setNome(String nome) {
		this.nome = nome;
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

	public void setCelular(String celular) {
		this.celular = celular;
	}

	public String getDataNascimento() {
		return dataNascimento;
	}

	public void setDataNascimento(String dataNascimento) {
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

	public Sexo getSexo() {
		return sexo;
	}

	public void setSexo(Sexo sexo) {
		this.sexo = sexo;
	}

	public EstadoCivil getEstadoCivil() {
		return estadoCivil;
	}

	public void setEstadoCivil(EstadoCivil estadoCivil) {
		this.estadoCivil = estadoCivil;
	}

	public String getReligiao() {
		return religiao;
	}

	public void setReligiao(String religiao) {
		this.religiao = religiao;
	}

	public String getEscolaridade() {
		return escolaridade;
	}

	public void setEscolaridade(String escolaridade) {
		this.escolaridade = escolaridade;
	}

	public String getNomeInstituicaoEnsino() {
		return nomeInstituicaoEnsino;
	}

	public void setNomeInstituicaoEnsino(String nomeInstituicaoEnsino) {
		this.nomeInstituicaoEnsino = nomeInstituicaoEnsino;
	}

	public String getTipoInstituicaoEnsino() {
		return tipoInstituicaoEnsino;
	}

	public void setTipoInstituicaoEnsino(String tipoInstituicaoEnsino) {
		this.tipoInstituicaoEnsino = tipoInstituicaoEnsino;
	}

	public String getNomeCurso() {
		return nomeCurso;
	}

	public void setNomeCurso(String nomeCurso) {
		this.nomeCurso = nomeCurso;
	}

	public String getProfissao() {
		return profissao;
	}

	public void setProfissao(String profissao) {
		this.profissao = profissao;
	}

	public String getEmpresa() {
		return empresa;
	}

	public void setEmpresa(String empresa) {
		this.empresa = empresa;
	}

	public Usuario getUsuario() {
		return usuario;
	}

	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}

	public Bandeirante getBandeirante() {
		return bandeirante;
	}

	public void setBandeirante(Bandeirante bandeirante) {
		this.bandeirante = bandeirante;
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
}
