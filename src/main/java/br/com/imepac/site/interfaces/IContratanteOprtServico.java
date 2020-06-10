package br.com.imepac.site.interfaces;

import java.util.List;

import br.com.imepac.site.entities.ContratanteOprt;

public interface IContratanteOprtServico {
	
	public void save(ContratanteOprt contratanteOprt);
	public List<ContratanteOprt> reads();
	public ContratanteOprt read(long id);
	public void delete(long id);
	public void update(ContratanteOprt contratanteOprt);
	
}