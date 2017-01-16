package br.com.semperparata.servirweb.enums;

public enum Ramo {

	CIRANDA("Ciranda"),
	B1("B1"),
	B2("B2"),
	GUIA("Guia");
	
	private String descricao;

    private Ramo(String descricao) {
        this.descricao = descricao;
    }

    public String getDescricao() {
        return descricao;
    }
}
