package br.com.imepac.site.controllers;


import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import br.com.imepac.site.dtos.OprtInfo;
import br.com.imepac.site.entities.Oportunidade;
import br.com.imepac.site.interfaces.IOportunidadeServico;

@Controller
@RequestMapping(value = "/oportunidade")
public class OportunidadeController {
	
	private IOportunidadeServico oportunidadeServico;
	private ModelAndView modelAndView;
	
	@RequestMapping(method = RequestMethod.POST, value = "oportunidade/salvar")
	public ModelAndView salvar(OprtInfo oprtInfo, BindingResult bindingResult) {
		if(bindingResult.hasErrors()) {
			//modelAndView.setViewName();
			modelAndView.addObject("message_error", "Foram encontrados erros!");
			modelAndView.addObject(oprtInfo);
		}
		else {
			Oportunidade oportunidade = new Oportunidade();
			oportunidade.setNome(oprtInfo.getNome());
			oportunidade.setFuncao(oprtInfo.getFuncao());
			oportunidade.setLocal(oprtInfo.getLocal());
			oportunidade.setData(oprtInfo.getData());
			oportunidade.setRemuneracao(oprtInfo.getRemuneracao());
			oportunidadeServico.save(oportunidade);
			//modelAndView.setViewName();
			modelAndView.addObject("message_success", "Cadastro efetuado com sucesso!");
		}
		return modelAndView;
	}

	@RequestMapping(method = RequestMethod.GET, value = "oportunidade/editar")
	public ModelAndView editar(OprtInfo oprtInfo, BindingResult bindingResult) {
		
	}
	
	@RequestMapping(method = RequestMethod.POST, value = "oportunidade/excluir")
	public ModelAndView excluir(OprtInfo oprtInfo, BindingResult bindingResult) {
		
	}
}
