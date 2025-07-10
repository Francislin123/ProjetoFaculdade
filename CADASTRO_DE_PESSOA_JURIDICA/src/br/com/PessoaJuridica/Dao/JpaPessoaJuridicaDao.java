package br.com.PessoaJuridica.Dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import br.com.PessoaJuridica.Modelo.PessoaJuridica;

@Repository("jpaPessoaJuridicaDao")
@Transactional
public class JpaPessoaJuridicaDao implements PessoaJuridicaDao {

	private EntityManager manager;

	public JpaPessoaJuridicaDao() {
	}

	@PersistenceContext
	public void setEntityManager(EntityManager manager) {
		this.manager = manager;
	}

	public void adiciona(PessoaJuridica pessoaJuridica) {
		this.manager.persist(pessoaJuridica);
	}

	public List<PessoaJuridica> getAllPessoaJuridica() {
		return this.manager.createQuery("select p from PessoaJuridica p", PessoaJuridica.class).getResultList();
	}

	public void altera(PessoaJuridica pessoaJuridica) {
		
		PessoaJuridica findPj = buscaPorId(pessoaJuridica.getId());
		
		PessoaJuridica pj = new PessoaJuridica();
		
		pj.setId(findPj.getId());
	    pj.setRazaoSocial(pessoaJuridica.getRazaoSocial());
	    pj.setNomeFantasia(findPj.getNomeFantasia());
	    pj.setCep(pessoaJuridica.getCep());
	    pj.setRua(pessoaJuridica.getRua());
	    pj.setBairro(pessoaJuridica.getBairro());
	    pj.setCidade(pessoaJuridica.getCidade());
	    pj.setEstado(pessoaJuridica.getEstado());
	    pj.setPais(pessoaJuridica.getPais());
	    pj.setTelefone(pessoaJuridica.getTelefone());
	    pj.setCnpj(pessoaJuridica.getCnpj());
	    pj.setInscricaoEstadual(pessoaJuridica.getInscricaoEstadual());
	    pj.setInscricaoMunicipal(pessoaJuridica.getInscricaoMunicipal());
	    pj.setRepresentanteLegalNome(pessoaJuridica.getRepresentanteLegalNome());
	    pj.setEmail(pessoaJuridica.getEmail());
	    pj.setDataConstituicao(pessoaJuridica.getDataConstituicao());
	    pj.setAtividadesDesenvolvidas(pessoaJuridica.getAtividadesDesenvolvidas());
	    pj.setGeneroAtividade(pessoaJuridica.getGeneroAtividade());
	    pj.setEspecieAtividade(pessoaJuridica.getEspecieAtividade());
	    pj.setCpfRepresentanteLegal(pessoaJuridica.getCpfRepresentanteLegal());
	    pj.setTelefoneRepresentanteLegal(pessoaJuridica.getTelefoneRepresentanteLegal());
	    
		
		this.manager.merge(pj);
	}

	public void remove(PessoaJuridica pessoaJuridica) {
		PessoaJuridica pessoaJuridicaRemover = buscaPorId(pessoaJuridica.getId());
		this.manager.remove(pessoaJuridicaRemover);
	}

	public PessoaJuridica buscaPorId(Integer id) {
		return manager.find(PessoaJuridica.class, id);
	}
}
