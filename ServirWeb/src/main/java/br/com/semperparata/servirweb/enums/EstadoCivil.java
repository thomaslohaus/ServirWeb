package br.com.semperparata.servirweb.enums;

public enum EstadoCivil {
	SOL("Solteiro(a)"),
	CAS("Casado(a)"),
	SEP("Separado(a)"),
	DIV("Divorciado(a)"),
	VIU("Viúvo(a)");

    private String descricao;

    private EstadoCivil(String descricao) {
        this.descricao = descricao;
    }

    public String getDescricao() {
        return descricao;
    }
}
