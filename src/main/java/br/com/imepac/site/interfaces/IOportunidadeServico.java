package br.com.imepac.site.interfaces;

import java.util.List;

import br.com.imepac.site.entities.Oportunidade;

public interface IOportunidadeServico {
	
	public void save(Oportunidade oportunidade);
	public List<Oportunidade> reads();
	public Oportunidade read(long id);
	public void delete(long id);
	public void update(Oportunidade oportunidade);

}