package br.com.semperparata.servirweb.enums;

public enum TipoEntidade {
	
	ESTADO	("Estado",	1),
	NUCLEO	("Núcleo",	2),
	GRUPO	("Grupo",	3),
	EQUIPE	("Equipe",	4);
	
	private String descricao;
	private int nivel;

    private TipoEntidade(String descricao, int nivel) {
        this.descricao = descricao;
		this.nivel = nivel;
    }

    public String getDescricao() {
        return descricao;
    }

	public int getNivel() {
		return nivel;
	}
}
