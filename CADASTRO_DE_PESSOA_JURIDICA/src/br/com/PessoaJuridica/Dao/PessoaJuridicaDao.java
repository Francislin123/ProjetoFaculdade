package br.com.PessoaJuridica.Dao;

import java.util.List;

import br.com.PessoaJuridica.Modelo.PessoaJuridica;

public interface PessoaJuridicaDao 
{

	void adiciona(PessoaJuridica pessoaJuridica);
	public List<PessoaJuridica> getAllPessoaJuridica();

}