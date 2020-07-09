package br.com.imepac.site.dtos;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

import br.com.imepac.site.utils.ContaTypeENUM;

public class ContaForm {

	@NotBlank(message = "O campo nome é obrigatório")
	private String nome;
	
	@NotBlank(message = "O campo email é obrigatório")
	private String email;
	
	@NotBlank(message = "O campo senha é obrigatório")
	private String senha;
	
	@NotNull(message = "Escolha um tipo!")
	private ContaTypeENUM tipo;

	public String getNome() {
		return nome;
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

	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}

	public ContaTypeENUM getTipo() {
		return tipo;
	}

	public void setTipo(ContaTypeENUM tipo) {
		this.tipo = tipo;
	}

	

}
