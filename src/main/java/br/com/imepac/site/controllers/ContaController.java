package br.com.imepac.site.controllers;

import javax.transaction.Transactional;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import br.com.imepac.site.dtos.ContaForm;
import br.com.imepac.site.entities.Candidato;
import br.com.imepac.site.entities.Contratante;
import br.com.imepac.site.entities.Usuario;
import br.com.imepac.site.interfaces.ICandidatoServico;
import br.com.imepac.site.interfaces.IContratanteServico;
import br.com.imepac.site.interfaces.IUsuarioServico;
import br.com.imepac.site.utils.ContaTypeENUM;
import net.bytebuddy.implementation.bytecode.constant.IntegerConstant;

@Controller
@RequestMapping(value = "/scripts/conta")
public class ContaController {

	@Autowired
	private ModelAndView modelAndView;

	@Autowired
	private ICandidatoServico candidatoServico;

	@Autowired
	private IContratanteServico contranteServico;

	@Autowired
	private IUsuarioServico usuarioServico;

	@Transactional
	@RequestMapping(method = RequestMethod.POST, value = "cadastrar", consumes = MediaType.APPLICATION_FORM_URLENCODED_VALUE)
	public ModelAndView cadastrar(@Valid ContaForm contaForm, BindingResult bindingResult) {

		if (bindingResult.hasErrors()) {
			modelAndView.setViewName("index");
			modelAndView.addObject("message_error", "Foram encontrados erros!");
		} else {

			//usuario
			Usuario usuario = new Usuario();
			usuario.setEmail(contaForm.getEmail());
			usuario.setSenha(contaForm.getSenha());
			usuario.setTipo(ContaTypeENUM.CANDIDATO);
			
			usuarioServico.save(usuario);

			if (contaForm.getTipo() == ContaTypeENUM.CANDIDATO.ordinal()) {
				//candidato
				Candidato candidato = new Candidato();
				candidato.setNome(contaForm.getNome());
				candidato.setUsuario(usuario);
				candidatoServico.save(candidato);
			} else {
				//contratante
				Contratante contratante = new Contratante();
				contratante.setNome(contaForm.getNome());
				contratante.setUsuario(usuario);
				contranteServico.save(contratante);
			}

			modelAndView.setViewName("index");
		}
		return modelAndView;
	}
	/*
	@RequestMapping(method = RequestMethod.DELETE, value = "usuario/delete/ {id}")
	public ModelAndView delete(@PathVariable long id) {
		usuarioServico.delete(id);
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("redirect:usuario/cadastrar");
		modelAndView.addObject("message_success", "Usuario deletado com sucesso");
		return modelAndView;
	}
	/*
	@RequestMapping(method = RequestMethod.GET, value = "usuario/gerenciar/{id}")
	public ModelAndView gerenciar(@PathVariable long id) {
		 Usuario usuario = usuarioServico.read(id);
		 ModelAndView modelAndView = new ModelAndView();
		 modelAndView.setViewName("usuario/gerenciar");
		 modelAndView.addObject("Usuarios", usuario);
		return modelAndView;
	}
	*/
}
