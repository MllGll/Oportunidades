package br.com.imepac.site.interfaces;

import java.util.List;

import br.com.imepac.site.entities.Candidato;

public interface ICandidatoServico {
	public void save(Candidato candidato);
	public List<Candidato> reads();
	public Candidato read(long id);
	public void delete(long id);
	public void update(Candidato candidato);
}
