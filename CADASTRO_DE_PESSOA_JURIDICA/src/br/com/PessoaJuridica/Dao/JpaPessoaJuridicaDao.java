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
		this.manager.merge(pessoaJuridica);
	}

	public void remove(PessoaJuridica pessoaJuridica) {
		PessoaJuridica pessoaJuridicaRemover = buscaPorId(pessoaJuridica.getId());
		this.manager.remove(pessoaJuridicaRemover);
	}

	public PessoaJuridica buscaPorId(Integer id) {
		return manager.find(PessoaJuridica.class, id);
	}
}
