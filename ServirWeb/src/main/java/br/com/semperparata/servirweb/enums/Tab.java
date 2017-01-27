package br.com.semperparata.servirweb.enums;

public enum Tab {
	PESSOAL		("tab-pessoal",		"Pessoal",		"glyphicon-user"),
	ENDERECO	("tab-endereco",	"Endereço",		"glyphicon-home"),
	FAMILIA		("tab-familia",		"Família",		"glyphicon-king"),
	BANDEIRANTE	("tab-bandeirante",	"Bandeirante",	"glyphicon-tent"),
	FICHA_SAUDE	("tab-saude",		"Ficha Saúde",	"glyphicon-heart"),
	FORMACAO	("tab-formacao",	"Formação",		"glyphicon-education");
	
	String codigo;
	String descricao;
	String icone;
	
	Tab (String codigo, String descricao, String icone) {
		this.codigo = codigo;
		this.descricao = descricao;
		this.icone = icone;
		
	}
	
	public String getCodigo() {
		return codigo;
	}
	
	public String getDescricao() {
		return descricao;
	}
	
	public String getIcone() {
		return icone;
	}
}
