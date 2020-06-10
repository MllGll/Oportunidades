package br.com.imepac.site.interfaces.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.imepac.site.entities.ContratanteOprt;
import br.com.imepac.site.entities.repositories.IContratanteOprtRepository;
import br.com.imepac.site.interfaces.IContratanteOprtServico;

@Service
public class ContratanteOprtServicoImpl implements IContratanteOprtServico {

	@Autowired
	private IContratanteOprtRepository contratanteOprtRepository;
	public void save(ContratanteOprt contratanteOprt) {
		contratanteOprtRepository.save(contratanteOprt);
		
	}

	
	public List<ContratanteOprt> reads() {
		return contratanteOprtRepository.findAll();
		
	}

	
	public ContratanteOprt read(long id) {
		return contratanteOprtRepository.findById(id).get();
	}

	
	public void delete(long id) {
		contratanteOprtRepository.deleteById(id);
		
	}

	
	public void update(ContratanteOprt contratanteOprt) {
		contratanteOprtRepository.save(contratanteOprt);
		
	}



	
}