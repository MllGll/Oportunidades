package br.com.imepac.site.controllers;


import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import br.com.imepac.site.dtos.OprtForm;
import br.com.imepac.site.entities.Oportunidade;
import br.com.imepac.site.interfaces.IOportunidadeServico;

@Controller
@RequestMapping(value = "/scripts/oportunidade")
public class OportunidadeController {
	
	@Autowired
	private IOportunidadeServico oportunidadeServico;
	
	@Autowired
	private ModelAndView modelAndView;
	
	@RequestMapping(method = RequestMethod.POST, value = "cadastrar")
	public ModelAndView cadastrar(@Valid OprtForm oprtForm, BindingResult bindingResult) {
		
		if(bindingResult.hasErrors()) {
			modelAndView.setViewName("contratante/oportunidade");
			modelAndView.addObject("message_error", "Foram encontrados erros!");
		}
		else {
			Oportunidade oportunidade = new Oportunidade();
			oportunidade.setNome(oprtForm.getNome());
			oportunidade.setFuncao(oprtForm.getFuncao());
			oportunidade.setLocal(oprtForm.getLocal());
			oportunidade.setData(oprtForm.getData());
			oportunidade.setRemuneracao(oprtForm.getRemuneracao());
			oportunidadeServico.save(oportunidade);
			
			modelAndView.setViewName("contratante/index");
		}
		return modelAndView;
	}

	@RequestMapping(method = RequestMethod.GET, value = "contratante/index")
	public ModelAndView gerenciar() {
		List<Oportunidade> oportunidades = oportunidadeServico.reads();
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("contratante/index");
		modelAndView.addObject("op", oportunidades);
		return modelAndView;
	}

	@RequestMapping(method = RequestMethod.POST, value = "atualizar")
	public ModelAndView atualizar(@Valid OprtForm oprtForm, @PathVariable long id, BindingResult bindingResult) {
		
		if(bindingResult.hasErrors()) {
			modelAndView.setViewName("contratante/editaroportunidade");
			modelAndView.addObject("message_error", "Foram encontrados erros!");
		}
		else {
			oportunidadeServico.read(id);
			//oportunidade.setNome(oprtForm.getNome());
			//oportunidade.setFuncao(oprtForm.getFuncao());
			//oportunidade.setLocal(oprtForm.getLocal());
			//oportunidade.setData(oprtForm.getData());
			//oportunidade.setRemuneracao(oprtForm.getRemuneracao());
			//oportunidadeServico.update(oportunidade);
			
			modelAndView.setViewName("contratante/index");
		}
		return modelAndView;
	}
	
	@RequestMapping(method = RequestMethod.DELETE, value = "deletar")
	public ModelAndView deletar(@PathVariable long id) {
		oportunidadeServico.delete(id);
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("contratante/index");
		return modelAndView;
	}
}
