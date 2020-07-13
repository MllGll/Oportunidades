package br.com.imepac.site.interfaces;

import java.util.List;

import br.com.imepac.site.dtos.LoginForm;
import br.com.imepac.site.entities.Usuario;
import br.com.imepac.site.utils.ContaTypeENUM;

public interface IUsuarioServico {
	public void save(Usuario usuario);
	public List<Usuario> reads();
	public Usuario read(long id);
	public void delete(long id);
	public void update(Usuario usuario);
	public boolean autenticacao(LoginForm loginForm);
	public ContaTypeENUM redirecionamento(LoginForm loginForm);
	public long sessao(LoginForm loginForm);
}
