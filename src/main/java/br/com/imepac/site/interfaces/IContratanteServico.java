package br.com.imepac.site.interfaces;

import java.util.List;

import br.com.imepac.site.entities.Contratante;

public interface IContratanteServico {
	public void save(Contratante contratante);
	public List<Contratante> reads();
	public Contratante read(long id);
	public void delete(long id);
	public void update(Contratante contratante);
}