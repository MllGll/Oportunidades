package br.com.imepac.site.interfaces;

import java.util.List;

import br.com.imepac.site.entities.Adicionais;

public interface IAdicionaisServico {
	
	public void save(Adicionais adicionais);
	public List<Adicionais> reads();
	public Adicionais read(long id);
	public void delete(long id);
	public void update(Adicionais adicionais);
	
}