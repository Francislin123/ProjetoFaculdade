package br.com.PessoaJuridica.Dao;

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
}
