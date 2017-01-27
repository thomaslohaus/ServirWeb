package br.com.semperparata.servirweb.enums;

public enum Escolaridade {
	FUND_CUR	("Ensino Fundamental - Cursando"),
	FUND_COM	("Ensino Fundamental - Completo"),
	MED_CUR		("Ensino Médio - Cursando"),
	MED_COM		("Ensino Médio - Completo"),
	SUP_CUR		("Superior - Cursando"),
	SUP_COM		("Superior - Completo");
	
	private String descricao;

    private Escolaridade(String descricao) {
        this.descricao = descricao;
    }

    public String getDescricao() {
        return descricao;
    }
    
    public String getCodigo() {
        return name();
    }
}
