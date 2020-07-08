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

import br.com.imepac.site.dtos.OprtInfo;
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
	public ModelAndView cadastrar(@Valid OprtInfo oprtInfo, BindingResult bindingResult) {
		
		if(bindingResult.hasErrors()) {
			modelAndView.setViewName("contratante/oportunidade");
			modelAndView.addObject("message_error", "Foram encontrados erros!");
		}
		else {
			Oportunidade oportunidade = new Oportunidade();
			oportunidade.setNome(oprtInfo.getNome());
			oportunidade.setFuncao(oprtInfo.getFuncao());
			oportunidade.setLocal(oprtInfo.getLocal());
			oportunidade.setData(oprtInfo.getData());
			oportunidade.setRemuneracao(oprtInfo.getRemuneracao());
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

	/*
	@RequestMapping(method = RequestMethod.GET, value = "visualizar/{id}")
	public ModelAndView visualizar(@PathVariable long id) {
		Usuario usuario = usuarioServico.read(id);
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("visualizar");
		modelAndView.addObject(usuario);
		return modelAndView;
	}
	@RequestMapping(method = RequestMethod.GET, value = "oportunidade/editar")
	public ModelAndView editar(OprtInfo oprtInfo, BindingResult bindingResult) {

	}
	
	@RequestMapping(method = RequestMethod.DELETE, value = "oportunidade/deletar")
	public ModelAndView deletar(@PathVariable long id) {
		oportunidadeServico.delete(id);
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("oportunidade/deletar");
		modelAndView.addObject("message_success", "Oportunidade deletada com sucesso");
		return modelAndView;
	}
	*/
}
