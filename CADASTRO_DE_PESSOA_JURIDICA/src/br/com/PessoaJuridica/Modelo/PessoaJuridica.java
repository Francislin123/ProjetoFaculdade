package br.com.PessoaJuridica.Modelo;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.*;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotBlank;
import org.hibernate.validator.constraints.br.CNPJ;
import org.hibernate.validator.constraints.br.CPF;
import org.springframework.format.annotation.DateTimeFormat;

@Entity
public class PessoaJuridica implements Serializable {

    private static final long serialVersionUID = -833903937564847649L;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer id;

    @NotBlank(message = "A razão social deve ser preenchida!")
    private String razaoSocial;

    @NotBlank(message = "O nome fantasia deve ser preenchido!")
    private String nomeFantasia;

    @NotBlank(message = "O campo CEP deve ser preenchido!")
    private String cep;

    @NotBlank(message = "O campo rua deve ser preenchido!")
    private String rua;

    @NotBlank(message = "O campo bairro deve ser preenchido!")
    private String bairro;

    @NotBlank(message = "O campo cidade deve ser preenchido!")
    private String cidade;

    @NotBlank(message = "O campo estado deve ser preenchido!")
    private String estado;

    @NotBlank(message = "O campo país deve ser preenchido!")
    private String pais;

    @NotBlank(message = "O campo telefone deve ser preenchido!")
    private String telefone;

    @CNPJ(message = "CNPJ inválido!")
    private String cnpj;

    @NotBlank(message = "O campo inscrição estadual deve ser preenchido!")
    private String inscricaoEstadual;

    @NotBlank(message = "O campo inscrição municipal deve ser preenchido!")
    private String inscricaoMunicipal;

    @Email(message = "E-mail inválido!")
    @NotBlank(message = "O campo e-mail deve ser preenchido!")
    private String email;

    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(pattern = "dd/MM/yyyy HH:mm:ss")
    private Date dataConstituicao = new java.sql.Date(System.currentTimeMillis());

    @NotBlank(message = "O campo atividades desenvolvidas deve ser preenchido!")
    private String atividadesDesenvolvidas;

    @NotBlank(message = "O campo gênero da atividade deve ser preenchido!")
    private String generoAtividade;

    @NotBlank(message = "O campo espécie da atividade deve ser preenchido!")
    private String especieAtividade;

    @NotBlank(message = "O campo nome do representante legal deve ser preenchido!")
    private String representanteLegalNome;

    @CPF(message = "CPF do representante inválido!")
    private String cpfRepresentanteLegal;

    @NotBlank(message = "O telefone do representante legal deve ser preenchido!")
    private String telefoneRepresentanteLegal;

    public PessoaJuridica() {
    	
    }
    
    public PessoaJuridica(
    	    Integer id,
    	    String razaoSocial,
    	    String nomeFantasia,
    	    String cep,
    	    String rua,
    	    String bairro,
    	    String cidade,
    	    String estado,
    	    String pais,
    	    String telefone,
    	    String cnpj,
    	    String inscricaoEstadual,
    	    String inscricaoMunicipal,
    	    String email,
    	    Date dataConstituicao,
    	    String atividadesDesenvolvidas,
    	    String generoAtividade,
    	    String especieAtividade,
    	    String representanteLegalNome,
    	    String cpfRepresentanteLegal,
    	    String telefoneRepresentanteLegal
    	) {
    	    this.id = id;
    	    this.razaoSocial = razaoSocial;
    	    this.nomeFantasia = nomeFantasia;
    	    this.cep = cep;
    	    this.rua = rua;
    	    this.bairro = bairro;
    	    this.cidade = cidade;
    	    this.estado = estado;
    	    this.pais = pais;
    	    this.telefone = telefone;
    	    this.cnpj = cnpj;
    	    this.inscricaoEstadual = inscricaoEstadual;
    	    this.inscricaoMunicipal = inscricaoMunicipal;
    	    this.email = email;
    	    this.dataConstituicao = dataConstituicao;
    	    this.atividadesDesenvolvidas = atividadesDesenvolvidas;
    	    this.generoAtividade = generoAtividade;
    	    this.especieAtividade = especieAtividade;
    	    this.representanteLegalNome = representanteLegalNome;
    	    this.cpfRepresentanteLegal = cpfRepresentanteLegal;
    	    this.telefoneRepresentanteLegal = telefoneRepresentanteLegal;
    	}

    
    public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getRazaoSocial() {
		return razaoSocial;
	}

	public void setRazaoSocial(String razaoSocial) {
		this.razaoSocial = razaoSocial;
	}

	public String getNomeFantasia() {
		return nomeFantasia;
	}

	public void setNomeFantasia(String nomeFantasia) {
		this.nomeFantasia = nomeFantasia;
	}

	public String getCep() {
		return cep;
	}

	public void setCep(String cep) {
		this.cep = cep;
	}

	public String getRua() {
		return rua;
	}

	public void setRua(String rua) {
		this.rua = rua;
	}

	public String getBairro() {
		return bairro;
	}

	public void setBairro(String bairro) {
		this.bairro = bairro;
	}

	public String getCidade() {
		return cidade;
	}

	public void setCidade(String cidade) {
		this.cidade = cidade;
	}

	public String getEstado() {
		return estado;
	}

	public void setEstado(String estado) {
		this.estado = estado;
	}

	public String getPais() {
		return pais;
	}

	public void setPais(String pais) {
		this.pais = pais;
	}

	public String getTelefone() {
		return telefone;
	}

	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}

	public String getCnpj() {
		return cnpj;
	}

	public void setCnpj(String cnpj) {
		this.cnpj = cnpj;
	}

	public String getInscricaoEstadual() {
		return inscricaoEstadual;
	}

	public void setInscricaoEstadual(String inscricaoEstadual) {
		this.inscricaoEstadual = inscricaoEstadual;
	}

	public String getInscricaoMunicipal() {
		return inscricaoMunicipal;
	}

	public void setInscricaoMunicipal(String inscricaoMunicipal) {
		this.inscricaoMunicipal = inscricaoMunicipal;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Date getDataConstituicao() {
		return dataConstituicao;
	}

	public void setDataConstituicao(Date dataConstituicao) {
		this.dataConstituicao = dataConstituicao;
	}

	public String getAtividadesDesenvolvidas() {
		return atividadesDesenvolvidas;
	}

	public void setAtividadesDesenvolvidas(String atividadesDesenvolvidas) {
		this.atividadesDesenvolvidas = atividadesDesenvolvidas;
	}

	public String getGeneroAtividade() {
		return generoAtividade;
	}

	public void setGeneroAtividade(String generoAtividade) {
		this.generoAtividade = generoAtividade;
	}

	public String getEspecieAtividade() {
		return especieAtividade;
	}

	public void setEspecieAtividade(String especieAtividade) {
		this.especieAtividade = especieAtividade;
	}

	public String getRepresentanteLegalNome() {
		return representanteLegalNome;
	}

	public void setRepresentanteLegalNome(String representanteLegalNome) {
		this.representanteLegalNome = representanteLegalNome;
	}

	public String getCpfRepresentanteLegal() {
		return cpfRepresentanteLegal;
	}

	public void setCpfRepresentanteLegal(String cpfRepresentanteLegal) {
		this.cpfRepresentanteLegal = cpfRepresentanteLegal;
	}

	public String getTelefoneRepresentanteLegal() {
		return telefoneRepresentanteLegal;
	}

	public void setTelefoneRepresentanteLegal(String telefoneRepresentanteLegal) {
		this.telefoneRepresentanteLegal = telefoneRepresentanteLegal;
	}

	@Override
    public String toString() {
        return "PessoaJuridica{" +
                "id=" + id +
                ", razaoSocial='" + razaoSocial + '\'' +
                ", nomeFantasia='" + nomeFantasia + '\'' +
                ", cidade='" + cidade + '\'' +
                ", estado='" + estado + '\'' +
                ", cnpj='" + cnpj + '\'' +
                '}';
    }
}