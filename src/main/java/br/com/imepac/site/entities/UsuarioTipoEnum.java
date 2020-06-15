package br.com.imepac.site.entities;

public enum UsuarioTipoEnum {

	CANDIDATO(1), CONTRATANTE(2);

	private int value;

	UsuarioTipoEnum(int i) {
		this.setValue(i);
	}

	public int getValue() {
		return value;
	}

	public void setValue(int value) {
		this.value = value;
	}
}
