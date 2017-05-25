package br.com.PessoaJuridica.Dao;

import java.util.List;

import br.com.PessoaJuridica.Modelo.PessoaJuridica;

public interface PessoaJuridicaDao 
{

	public List<PessoaJuridica> getAllPessoaJuridica();

	PessoaJuridica buscaPorId(Integer PESSOA_JURIDICA_ID);

	public void adiciona(PessoaJuridica pessoaJuridica);

	public void altera(PessoaJuridica pessoaJuridica);

	public void remove(PessoaJuridica pessoaJuridica);

}