package br.com.imepac.site.interfaces.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.imepac.site.entities.Oportunidade;
import br.com.imepac.site.entities.repositories.IOportunidadeRepository;
import br.com.imepac.site.interfaces.IOportunidadeServico;

@Service
public class OportunidadeServicoImpl implements IOportunidadeServico {

	@Autowired
	private IOportunidadeRepository oportunidadeRepository;
	public void save(Oportunidade oportunidade) {
		oportunidadeRepository.save(oportunidade);
		
	}

	
	public List<Oportunidade> reads() {
		return oportunidadeRepository.findAll();
		
	}

	
	public Oportunidade read(long id) {
		return oportunidadeRepository.findById(id).get();
	}

	
	public void delete(long id) {
		oportunidadeRepository.deleteById(id);
		
	}

	
	public void update(Oportunidade oportunidade) {
		oportunidadeRepository.save(oportunidade);
		
	}



	
}