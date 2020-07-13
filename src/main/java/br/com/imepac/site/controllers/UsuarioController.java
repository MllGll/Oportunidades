package br.com.imepac.site.controllers;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import br.com.imepac.site.dtos.LoginForm;
import br.com.imepac.site.interfaces.IUsuarioServico;
import br.com.imepac.site.utils.ContaTypeENUM;

@Controller
@RequestMapping(value = "/scripts/usuario")
public class UsuarioController {

	@Autowired
	private IUsuarioServico usuarioServico;
	
	@Autowired
	private ModelAndView modelAndView;
	
	@RequestMapping(method = RequestMethod.GET, value = "login")
	public ModelAndView login(@Valid LoginForm loginForm, HttpSession session, BindingResult bindingResult) {

		if (bindingResult.hasErrors()) {
			modelAndView.setViewName("index");
		} 
		else {

			if(usuarioServico.autenticacao(loginForm)==true) {
				 
				if(usuarioServico.redirecionamento(loginForm) == ContaTypeENUM.CANDIDATO){	
					modelAndView.setViewName("candidato/index");
				}
				else{
					modelAndView.setViewName("redirect:/scripts/oportunidade/gerenciar");
				}
				
				session.setAttribute("usuarioLogado", usuarioServico.sessao(loginForm));
			}else {
				modelAndView.setViewName("index");
				modelAndView.addObject("message_error", "Dados de acesso incorretos!");	
			}
		}
		
		return modelAndView;
	}
	@RequestMapping(value = "logout")
	public ModelAndView logout(HttpSession session) {
		session.invalidate();
		modelAndView.setViewName("index");
        return modelAndView;
	}
}
