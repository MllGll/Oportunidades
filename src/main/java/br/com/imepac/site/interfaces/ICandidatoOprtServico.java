package br.com.imepac.site.interfaces;

import java.util.List;

import br.com.imepac.site.entities.CandidatoOprt;

public interface ICandidatoOprtServico {
	public void save(CandidatoOprt candidatoOprt);
	public List<CandidatoOprt> reads();
	public CandidatoOprt read(long id);
	public void delete(long id);
	public void update(CandidatoOprt candidatoOprt);
}
