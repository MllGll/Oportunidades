package br.com.imepac.site.dtos;

import javax.validation.constraints.NotBlank;

public class OprtForm {
	
	
	@NotBlank(message = "*")
	private String nome;
	
	@NotBlank(message = "*")
	private String funcao;
	
	@NotBlank(message = "*")
	private String local;
	
	private String data;
	
	@NotBlank(message = "*")
	private String remuneracao;
	
	
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getFuncao() {
		return funcao;
	}
	public void setFuncao(String funcao) {
		this.funcao = funcao;
	}
	public String getLocal() {
		return local;
	}
	public void setLocal(String local) {
		this.local = local;
	}
	public String getData() {
		return data;
	}
	public void setData(String data) {
		this.data = data;
	}
	public String getRemuneracao() {
		return remuneracao;
	}
	public void setRemuneracao(String remuneracao) {
		this.remuneracao = remuneracao;
	}

	
}
