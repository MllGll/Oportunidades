package br.com.imepac.site.interfaces.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.imepac.site.entities.Candidato;
import br.com.imepac.site.entities.repositories.ICandidatoRepository;
import br.com.imepac.site.interfaces.ICandidatoServico;

@Service
public class CandidatoServicoImpl implements ICandidatoServico {
	
	@Autowired
	private ICandidatoRepository candidatoRepository;

	public void save(Candidato candidato) {
		candidatoRepository.save(candidato);
	}

	public List<Candidato> reads() {
		return candidatoRepository.findAll();
	}

	public Candidato read(long id) {
		return candidatoRepository.findById(id).get();
	}

	public void delete(long id) {
		candidatoRepository.deleteById(id);
	}

	public void update(Candidato candidato) {
		candidatoRepository.save(candidato);
	}
}
