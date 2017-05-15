package br.com.PessoaJuridica.Controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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
		// System.out.println("To String: " + pessoaJuridica.toString());
		return "AdicionaPessoaJuridica";
	}

	@RequestMapping(value = "/adicionaPessoaJuridica", method = RequestMethod.POST)
	public String adiciona(@Valid PessoaJuridica pessoaJuridica, BindingResult result){
		if (result.hasFieldErrors()) {
			System.out.println(pessoaJuridica.getCPF_REPRESENTANTE_LEGAL());
			return "forward:novaPessoaJuridicaErro";
		}
		    System.out.println(pessoaJuridica.getCPF_REPRESENTANTE_LEGAL());  
		dao.adiciona(pessoaJuridica);
		return "PessoaJuridicaAdicionado";
	}
}
