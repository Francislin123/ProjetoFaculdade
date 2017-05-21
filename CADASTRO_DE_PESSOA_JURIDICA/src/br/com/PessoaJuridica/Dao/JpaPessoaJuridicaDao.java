package br.com.PessoaJuridica.Dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import br.com.PessoaJuridica.Modelo.PessoaJuridica;

@Repository
@Transactional
public class JpaPessoaJuridicaDao implements PessoaJuridicaDao {

	@PersistenceContext
	private EntityManager manager;

	public void adiciona(PessoaJuridica pessoaJuridica) {
		this.manager.persist(pessoaJuridica);
	}

	public List<PessoaJuridica> getAllPessoaJuridica() {
		return this.manager.createQuery("select p from PessoaJuridica p", PessoaJuridica.class).getResultList();
	}
}
