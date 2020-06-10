package br.com.imepac.site.interfaces.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.imepac.site.entities.Contratante;
import br.com.imepac.site.entities.repositories.IContratanteRepository;
import br.com.imepac.site.interfaces.IContratanteServico;

@Service
public class ContratanteServicoImpl implements IContratanteServico{
	
	@Autowired
	private IContratanteRepository iempregadorRepository;

	public void save(Contratante contratante) {
		iempregadorRepository.save(contratante);
	}

	public List<Contratante> reads() {
		return iempregadorRepository.findAll();
	}

	public Contratante read(long id) {
		return iempregadorRepository.findById(id).get();
	}

	public void delete(long id) {
		iempregadorRepository.deleteById(id);
	}

	public void update(Contratante contratante) {
		iempregadorRepository.save(contratante);
	}

}