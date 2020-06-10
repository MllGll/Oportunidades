package br.com.imepac.site.interfaces.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.imepac.site.entities.Adicionais;
import br.com.imepac.site.entities.repositories.IAdicionaisRepository;
import br.com.imepac.site.interfaces.IAdicionaisServico;

@Service
public class AdicionaisServicoImpl implements IAdicionaisServico {

	@Autowired
	private IAdicionaisRepository adicionaisRepository;
	public void save(Adicionais adicionais) {
		adicionaisRepository.save(adicionais);
		
	}

	
	public List<Adicionais> reads() {
		return adicionaisRepository.findAll();
		
	}

	
	public Adicionais read(long id) {
		return adicionaisRepository.findById(id).get();
	}

	
	public void delete(long id) {
		adicionaisRepository.deleteById(id);
		
	}

	
	public void update(Adicionais adicionais) {
		adicionaisRepository.save(adicionais);
		
	}



	
}