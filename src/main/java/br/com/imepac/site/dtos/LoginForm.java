package br.com.imepac.site.dtos;

import javax.validation.constraints.NotBlank;

import br.com.imepac.site.entities.Usuario;

public class LoginForm {

	@NotBlank(message = "Campo e-mail dé obrigatório o preenchimento!")
	private String email;
	@NotBlank(message = "Campo senha dé obrigatório o preenchimento!")
	private String senha;
	
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
	
	
}
