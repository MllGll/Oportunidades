package br.com.imepac.site.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import br.com.imepac.site.dtos.LoginForm;
import br.com.imepac.site.entities.Usuario;
import br.com.imepac.site.interfaces.IUsuarioServico;

@Controller
@RequestMapping(value = "/scripts/usuario")
public class UsuarioController {

	@Autowired
	private IUsuarioServico usuarioServico;
	
	@Autowired
	private ModelAndView modelAndView;
/*
	@RequestMapping(method = RequestMethod.POST, value = "salvar")
	public ModelAndView salvar(@Valid Usuario usuario, BindingResult bindingResult) {

		if (bindingResult.hasErrors()) {
			modelAndView.setViewName("cadastrar");
			modelAndView.addObject("message_error", "Foram encontrados erros!");
			modelAndView.addObject(usuario);
		} else {
			usuarioServico.save(usuario);
			modelAndView.setViewName("redirect:gerenciar");
			modelAndView.addObject("message_success", "Cadastro efetuado com sucesso!");
		}
		return modelAndView;
	}
	
	@RequestMapping(method = RequestMethod.GET, value = "gerenciar")
	public ModelAndView gerenciar() {
		List<Usuario> usuarios = usuarioServico.reads();
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("gerenciar");
		modelAndView.addObject("usuarios",usuarios);
		return modelAndView;
	}

	@RequestMapping(method = RequestMethod.GET, value = "visualizar/{id}")
	public ModelAndView visualizar(@PathVariable long id) {
		Usuario usuario = usuarioServico.read(id);
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("visualizar");
		modelAndView.addObject(usuario);
		return modelAndView;
	}
*/
	
	@RequestMapping(method = RequestMethod.GET, value = "login")
	public ModelAndView login(@Valid LoginForm loginForm, BindingResult bindingResult) {

		if (bindingResult.hasErrors()) {
			modelAndView.setViewName("index");
			modelAndView.addObject("message_error", "Foram encontrados erros!");
		} 
		/*
		else {

			if(usuarioServico.autenticacao(loginForm)==true) {
				// criar um elemento na sessão
				
				//modelAndView.setViewName("gerenciar");
			}else {
				modelAndView.setViewName("index");
				modelAndView.addObject("message_erro", "Dados de acesso incorretos!");	
			}
		}
		*/
		return modelAndView;
	}
}
