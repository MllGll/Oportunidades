package br.com.imepac.site.controllers;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import br.com.imepac.site.entities.Usuario;

@Controller
@RequestMapping(value = "/conta")
public class ContaController {
	
	private ModelAndView modelAndView;
	
	@RequestMapping(method = RequestMethod.POST, value = "/salvar")
	public ModelAndView salvar(@RequestBody String nome, @RequestBody String email, @RequestBody String senha, @RequestBody String tipo, BindingResult bindingResult) {

		if (bindingResult.hasErrors()) {
			modelAndView.setViewName("usuarios/cadastrar");
			modelAndView.addObject("message_error", "Foram encontrados erros!");
		} else {
			modelAndView.setViewName("redirect:gerenciar");
			modelAndView.addObject("message_success", "Cadastro efetuado com sucesso!");
		}
		return modelAndView;
	}
}
