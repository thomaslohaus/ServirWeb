package br.com.semperparata.servirweb.enums;

public enum Sexo {
	
	F("Feminino"),
	M("Masculino");

    private String descricao;

    private Sexo(String descricao) {
        this.descricao = descricao;
    }

    public String getDescricao() {
        return descricao;
    }
}
