package br.com.imepac.site.controllers;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;
import javax.validation.Valid;
import javax.validation.constraints.NotBlank;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
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
	@RequestMapping(method = RequestMethod.POST, value = "cadastrar")
	public ModelAndView cadastrar(@Valid ContaForm contaForm, BindingResult bindingResult) {

		if (bindingResult.hasErrors()) {
			modelAndView.setViewName("index");
		} else {

			//usuario
			Usuario usuario = new Usuario();
			usuario.setEmail(contaForm.getEmail());
			usuario.setSenha(contaForm.getSenha());
			usuario.setTipo(contaForm.getTipo());
			
			usuarioServico.save(usuario);

			if (contaForm.getTipo() == ContaTypeENUM.CANDIDATO) {
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
			modelAndView.addObject("message_success", "Cadastro realizado com sucesso!");
			
			modelAndView.setViewName("index");
		}
		return modelAndView;
	}
	
	@RequestMapping(method = RequestMethod.DELETE, value = "deletar")
	public ModelAndView deletar(@PathVariable long id) {
		usuarioServico.delete(id);
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("index");
		return modelAndView;
	}
	
	/*
	@Transactional
	@RequestMapping(method = RequestMethod.POST, value = "atualizar", consumes = MediaType.APPLICATION_FORM_URLENCODED_VALUE)
	public ModelAndView atualizar(@RequestParam CommonsMultipartFile file, BindingResult bindingResult) {
	
	}
	*/
	@RequestMapping(method = RequestMethod.POST, value = "upload")
	public ModelAndView upload(@RequestParam CommonsMultipartFile file,HttpSession session){
		String path=session.getServletContext().getRealPath("/");  
        String filename=file.getOriginalFilename();  
          
        try{  
        	byte barr[]=file.getBytes();  
          
        	BufferedOutputStream bout=new BufferedOutputStream(new FileOutputStream(path+"/"+filename));  
        	bout.write(barr);  
        	bout.flush();  
        	bout.close();  
          
        }catch(Exception e){
        	System.out.println(e);
        }  
        return new ModelAndView("candidato/index","filename",path+"/"+filename);  
	}
}
