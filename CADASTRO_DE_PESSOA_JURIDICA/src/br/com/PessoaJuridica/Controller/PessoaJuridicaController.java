package br.com.PessoaJuridica.Controller;

import javax.servlet.ServletException;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import br.com.PessoaJuridica.Dao.PessoaJuridicaDao;
import br.com.PessoaJuridica.Modelo.PessoaJuridica;

@Controller
public class PessoaJuridicaController {

	private PessoaJuridicaDao dao;

	@Autowired
	public PessoaJuridicaController(PessoaJuridicaDao dao) {
		this.dao = dao;
	}

	@RequestMapping(value = "/novaPessoaJuridica", method = RequestMethod.GET)
	public String form() {
		System.out.println("Redirecionando para a pagina de cadastro");
		return "AdicionaPessoaJuridica";
	}

	@RequestMapping(value = "/novaPessoaJuridicaErro", method = RequestMethod.POST)
	public String adicionaErro(@Valid PessoaJuridica pessoaJuridica, BindingResult result) {
		return "AdicionaPessoaJuridica";
	}

	@RequestMapping(value = "/novaPessoaJuridicaErroAlteracao")
	public String erroAlteracao(@Valid PessoaJuridica pessoaJuridica, BindingResult result) {
		return "AlterarPessoaJuridica";
	}
	
	@RequestMapping(value = "/existePessoaJuridicaErro")
	public String erroAdd(@Valid PessoaJuridica pessoaJuridica, BindingResult result) {
		return "PessoaJuridicaExisteErro";
	}

	@RequestMapping(value = "/adicionaPessoaJuridica", method = RequestMethod.POST)
	public String adiciona(@Valid PessoaJuridica pessoaJuridica, BindingResult result) {
		try {
			if (result.hasFieldErrors()) {
				return "forward:novaPessoaJuridicaErro";
			}
			if (pessoaJuridica.getPESSOA_JURIDICA_ID() == null) {
				this.dao.adiciona(pessoaJuridica);
				return "PessoaJuridicaAdicionado";
			}else{
			    this.dao.altera(pessoaJuridica);
			    return "redirect:listaPessoaJuridica";
			}
		} catch (Exception e) {
			   return "forward:existePessoaJuridicaErro";
		}
	}

	@RequestMapping(value = "/listaPessoaJuridica", method = RequestMethod.GET)
	public String listarPessoaJuridica(Model model) throws Exception {
		model.addAttribute("pessoaJuridica", dao.getAllPessoaJuridica());
		return "ListaPessoaJuridica";
	}
	
	@RequestMapping(value = "/listaPessoaJuridicaUsuario", method = RequestMethod.GET)
	public String listaPessoaJuridicaUsuário(Model model) throws Exception {
		model.addAttribute("pessoaJuridica", dao.getAllPessoaJuridica());
		return "ListaPessoaJuridicaUsuario";
	}

	@RequestMapping(value = "/removePessoaJuridica", method = RequestMethod.GET)
	public String remove(PessoaJuridica pessoaJuridica) throws ServletException {
		dao.remove(pessoaJuridica);
		System.out.println("Pessoa Juridica " + pessoaJuridica + " removido com sucesso! ");
		return "redirect:listaPessoaJuridica";
	}

	@RequestMapping(value = "/buscarPessoaJuridica", method = RequestMethod.GET)
	public String mostra(Integer PESSOA_JURIDICA_ID, Model model) throws Exception {
		PessoaJuridica pessoaJuridica = (PessoaJuridica) dao.buscaPorId(PESSOA_JURIDICA_ID);
		model.addAttribute("pessoaJuridica", pessoaJuridica);
		return "AlterarPessoaJuridica";
	}
}
