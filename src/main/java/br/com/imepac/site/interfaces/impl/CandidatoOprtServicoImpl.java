package br.com.imepac.site.interfaces.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.imepac.site.entities.CandidatoOprt;
import br.com.imepac.site.entities.repositories.ICandidatoOprtRepository;
import br.com.imepac.site.interfaces.ICandidatoOprtServico;

@Service
public class CandidatoOprtServicoImpl implements ICandidatoOprtServico{

	@Autowired
	private ICandidatoOprtRepository candidatoOprtRepository;
	
	public void save(CandidatoOprt candidatoOprt) {
		candidatoOprtRepository.save(candidatoOprt);
	}

	public List<CandidatoOprt> reads() {
		return candidatoOprtRepository.findAll();
	}

	public CandidatoOprt read(long id) {
		return candidatoOprtRepository.findById(id).get();
	}

	public void delete(long id) {
		candidatoOprtRepository.deleteById(id);
	}

	public void update(CandidatoOprt candidatoOprt) {
		candidatoOprtRepository.save(candidatoOprt);
	}

}
