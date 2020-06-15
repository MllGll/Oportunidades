package br.com.imepac.site.entities;

import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

import br.com.imepac.site.utils.ContaTypeENUM;

@Entity
@Table(name = "usuarios")
public class Usuario {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;
	
	@NotBlank(message = "")
	private String email;

	@NotBlank(message = "O campo senha é obrigatório")
	private String senha;
	
	@Enumerated(EnumType.ORDINAL)
	@NotNull(message = "A seleção de tipo de usuário é obrigatória")
	private ContaTypeENUM tipo;
	
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
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
	
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
}
