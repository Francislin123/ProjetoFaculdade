package br.com.PessoaJuridica.Controller;

import javax.servlet.ServletException;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
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

	// OK
	@RequestMapping(value = "/novaPessoaJuridica", method = RequestMethod.GET)
	public String form() {
		System.out.println("Redirecionando para a pagina de cadastro");
		return "AdicionaPessoaJuridica";
	}

	// OK
	@RequestMapping(value = "/novaPessoaJuridicaErro", method = RequestMethod.POST)
	public String adicionaErro(@Valid PessoaJuridica pessoaJuridica, BindingResult result) {
		return "AdicionaPessoaJuridica";
	}

	@RequestMapping(value = "/novaPessoaJuridicaErroAlteracao")
	public String erroAlteracao(@Valid PessoaJuridica pessoaJuridica, BindingResult result) {
		return "AlterarPessoaJuridica";
	}

	// OK
	@RequestMapping(value = "/adicionaPessoaJuridica", method = RequestMethod.POST)
	public String adiciona(@Valid PessoaJuridica pessoaJuridica, BindingResult result) {
		if (result.hasFieldErrors()) {
			return "forward:novaPessoaJuridicaErro";
		}
		this.dao.adiciona(pessoaJuridica);
		return "PessoaJuridicaAdicionado";
	}

	// OK
	@RequestMapping(value = "/listaPessoaJuridica", method = RequestMethod.GET)
	public String listarPessoaJuridica(Model model) throws Exception {
		model.addAttribute("pessoaJuridica", dao.getAllPessoaJuridica());
		return "ListaPessoaJuridica";
	}

	// OK
	@RequestMapping(value = "/removePessoaJuridica", method = RequestMethod.GET)
	public String remove(PessoaJuridica pessoaJuridica) throws ServletException {
		dao.remove(pessoaJuridica);
		System.out.println("Pessoa Juridica " + pessoaJuridica + " removido com sucesso! ");
		return "redirect:listaPessoaJuridica";
	}

	// OK
	@RequestMapping(value = "/buscarPessoaJuridica", method = RequestMethod.GET)
	public String mostra(Integer PESSOA_JURIDICA_ID, Model model) throws Exception {
		PessoaJuridica pessoaJuridica = (PessoaJuridica) dao.buscaPorId(PESSOA_JURIDICA_ID);
		model.addAttribute("pessoaJuridica", pessoaJuridica);
		System.out.println("Pessoa Juridica id " + pessoaJuridica.getPESSOA_JURIDICA_ID());
		return "AlterarPessoaJuridica";
	}

	// OK
	@RequestMapping(value = "/alterarPessoaJuridica", method = RequestMethod.PUT)
	public String altera(@ModelAttribute("pessoaJuridica") PessoaJuridica pessoaJuridica) {
		dao.altera(pessoaJuridica);
		return "redirect:listaPessoaJuridica";
	}
}
