package br.com.imepac.site.dtos;

import javax.validation.constraints.NotBlank;

public class LoginForm {

	@NotBlank(message = "(campo obrigatório)")
	private String email;
	@NotBlank(message = "(campo obrigatório)")
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
