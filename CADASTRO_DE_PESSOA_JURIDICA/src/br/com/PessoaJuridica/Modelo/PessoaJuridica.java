package br.com.PessoaJuridica.Modelo;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotBlank;
import org.hibernate.validator.constraints.br.CPF;

@Entity
public class PessoaJuridica implements Serializable {

	private static final long serialVersionUID = -833903937564847649L;

	@Id
	@GeneratedValue
	private Integer PESSOA_JURIDICA_ID;

	@NotBlank(message = "A razão social deve ser preenchida !")
	private String RAZAO_SOCIAL;

	@NotBlank(message = " Nome fantasia deve ser preenchido !")
	private String NOME_FANTASIA;

	@NotBlank(message = " O campo bairro deve ser preenchido !")
	private String BAIRRO;

	@NotBlank(message = " O campo cidade deve ser preenchido !")
	private String CIDADE;

	@NotBlank(message = " O campo estado deve ser preenchido !")
	private String ESTADO;

	@NotBlank(message = " O campo pais deve ser preenchido !")
	private String PAIS;

	@NotBlank(message = " O campo cep deve ser preenchido !")
	private String CEP;

	@NotBlank(message = " O campo telefone deve ser preenchido !")
	private String TELEFONE;

	@org.hibernate.validator.constraints.br.CNPJ(message = " O campo cnpj deve ser preenchido !")
	private String CNPJ;

	@NotBlank(message = " O campo inscrição estadual deve ser preenchido !")
	private String INSCRICAO_ESTADUAL;

	@NotBlank(message = " O campo inscriçao municipal deve ser preenchido !")
	private String INSCRICAO_MUNICIPAL;

	@Email(message = " O campo e-mail deve ser preenchido !")
	@NotBlank(message = " O campo e-mail deve ser preenchido !")
	private String EMAIL;

	// Não preciso valida a data
	@Temporal(TemporalType.TIMESTAMP)
	private Date DATA_DE_CONSTITUICAO = new java.sql.Date(System.currentTimeMillis());

	@NotBlank(message = " O campo atividades desenvolvidas deve ser preenchido!")
	private String ATIVIDADES_DESENVOLVIDAS;

	@NotBlank(message = " O campo genero de atividade deve ser preenchido !")
	private String GENERO_DA_ATIVIDADES;

	@NotBlank(message = " O campo espece da atividade deve ser preenchido !")
	private String ESPECE_DA_ATIVIDADE;

	@NotBlank(message = " O campo representante legal deve ser preenchido !")
	private String REPRESENTANTE_LEGAL_NOME;

	@CPF(message = " CPF invalido - (Digite apenas numeros)")
	private String CPF_REPRESENTANTE_LEGAL;

	@NotBlank(message = " O campo representante legal telefone deve ser preenchido !")
	private String TELEFONE_REPRESENTANTE_LEGAL;

	public PessoaJuridica() {
	}

	public PessoaJuridica(Integer PESSOA_JURIDICA_ID, String RAZAO_SOCIAL, String NOME_FANTASIA, String BAIRRO,
			String CIDADE, String ESTADO, String PAIS, String CEP, String TELEFONE, String CNPJ,
			String INSCRICAO_ESTADUAL, String INSCRICAO_MUNICIPAL, String EMAIL, Date DATA_DE_CONSTITUICAO,
			String ATIVIDADES_DESENVOLVIDAS, String GENERO_DA_ATIVIDADES, String ESPECE_DA_ATIVIDADE,
			String REPRESENTANTE_LEGAL_NOME, String CPF_REPRESENTANTE_LEGAL, String TELEFONE_REPRESENTANTE_LEGAL) {
		super();
		this.PESSOA_JURIDICA_ID = PESSOA_JURIDICA_ID;
		this.RAZAO_SOCIAL = RAZAO_SOCIAL;
		this.NOME_FANTASIA = NOME_FANTASIA;
		this.BAIRRO = BAIRRO;
		this.CIDADE = CIDADE;
		this.ESTADO = ESTADO;
		this.PAIS = PAIS;
		this.CEP = CEP;
		this.TELEFONE = TELEFONE;
		this.CNPJ = CNPJ;
		this.INSCRICAO_ESTADUAL = INSCRICAO_ESTADUAL;
		this.INSCRICAO_MUNICIPAL = INSCRICAO_MUNICIPAL;
		this.EMAIL = EMAIL;
		this.DATA_DE_CONSTITUICAO = DATA_DE_CONSTITUICAO;
		this.ATIVIDADES_DESENVOLVIDAS = ATIVIDADES_DESENVOLVIDAS;
		this.GENERO_DA_ATIVIDADES = GENERO_DA_ATIVIDADES;
		this.ESPECE_DA_ATIVIDADE = ESPECE_DA_ATIVIDADE;
		this.REPRESENTANTE_LEGAL_NOME = REPRESENTANTE_LEGAL_NOME;
		this.REPRESENTANTE_LEGAL_NOME = CPF_REPRESENTANTE_LEGAL;
		this.TELEFONE_REPRESENTANTE_LEGAL = TELEFONE_REPRESENTANTE_LEGAL;
	}

	public Integer getPESSOA_JURIDICA_ID() {
		return PESSOA_JURIDICA_ID;
	}

	public void setPESSOA_JURIDICA_ID(Integer pESSOA_JURIDICA_ID) {
		PESSOA_JURIDICA_ID = pESSOA_JURIDICA_ID;
	}

	public String getRAZAO_SOCIAL() {
		return RAZAO_SOCIAL;
	}

	public void setRAZAO_SOCIAL(String rAZAO_SOCIAL) {
		RAZAO_SOCIAL = rAZAO_SOCIAL;
	}

	public String getNOME_FANTASIA() {
		return NOME_FANTASIA;
	}

	public void setNOME_FANTASIA(String nOME_FANTASIA) {
		NOME_FANTASIA = nOME_FANTASIA;
	}

	public String getBAIRRO() {
		return BAIRRO;
	}

	public void setBAIRRO(String bAIRRO) {
		BAIRRO = bAIRRO;
	}

	public String getCIDADE() {
		return CIDADE;
	}

	public void setCIDADE(String cIDADE) {
		CIDADE = cIDADE;
	}

	public String getESTADO() {
		return ESTADO;
	}

	public void setESTADO(String eSTADO) {
		ESTADO = eSTADO;
	}

	public String getPAIS() {
		return PAIS;
	}

	public void setPAIS(String pAIS) {
		PAIS = pAIS;
	}

	public String getCEP() {
		return CEP;
	}

	public void setCEP(String cEP) {
		CEP = cEP;
	}

	public String getTELEFONE() {
		return TELEFONE;
	}

	public void setTELEFONE(String tELEFONE) {
		TELEFONE = tELEFONE;
	}

	public String getCNPJ() {
		return CNPJ;
	}

	public void setCNPJ(String cNPJ) {
		CNPJ = cNPJ;
	}

	public String getINSCRICAO_ESTADUAL() {
		return INSCRICAO_ESTADUAL;
	}

	public void setINSCRICAO_ESTADUAL(String iNSCRICAO_ESTADUAL) {
		INSCRICAO_ESTADUAL = iNSCRICAO_ESTADUAL;
	}

	public String getINSCRICAO_MUNICIPAL() {
		return INSCRICAO_MUNICIPAL;
	}

	public void setINSCRICAO_MUNICIPAL(String iNSCRICAO_MUNICIPAL) {
		INSCRICAO_MUNICIPAL = iNSCRICAO_MUNICIPAL;
	}

	public String getEMAIL() {
		return EMAIL;
	}

	public void setEMAIL(String eMAIL) {
		EMAIL = eMAIL;
	}

	public Date getDATA_DE_CONSTITUICAO() {
		return DATA_DE_CONSTITUICAO;
	}

	public void setDATA_DE_CONSTITUICAO(Date dATA_DE_CONSTITUICAO) {
		DATA_DE_CONSTITUICAO = dATA_DE_CONSTITUICAO;
	}

	public String getATIVIDADES_DESENVOLVIDAS() {
		return ATIVIDADES_DESENVOLVIDAS;
	}

	public void setATIVIDADES_DESENVOLVIDAS(String aTIVIDADES_DESENVOLVIDAS) {
		ATIVIDADES_DESENVOLVIDAS = aTIVIDADES_DESENVOLVIDAS;
	}

	public String getGENERO_DA_ATIVIDADES() {
		return GENERO_DA_ATIVIDADES;
	}

	public void setGENERO_DA_ATIVIDADES(String gENERO_DA_ATIVIDADES) {
		GENERO_DA_ATIVIDADES = gENERO_DA_ATIVIDADES;
	}

	public String getESPECE_DA_ATIVIDADE() {
		return ESPECE_DA_ATIVIDADE;
	}

	public void setESPECE_DA_ATIVIDADE(String eSPECE_DA_ATIVIDADE) {
		ESPECE_DA_ATIVIDADE = eSPECE_DA_ATIVIDADE;
	}

	public String getREPRESENTANTE_LEGAL_NOME() {
		return REPRESENTANTE_LEGAL_NOME;
	}

	public void setREPRESENTANTE_LEGAL_NOME(String rEPRESENTANTE_LEGAL_NOME) {
		REPRESENTANTE_LEGAL_NOME = rEPRESENTANTE_LEGAL_NOME;
	}

	public String getCPF_REPRESENTANTE_LEGAL() {
		return CPF_REPRESENTANTE_LEGAL;
	}

	public void setCPF_REPRESENTANTE_LEGAL(String cPF_REPRESENTANTE_LEGAL) {
		CPF_REPRESENTANTE_LEGAL = cPF_REPRESENTANTE_LEGAL;
	}

	public String getTELEFONE_REPRESENTANTE_LEGAL() {
		return TELEFONE_REPRESENTANTE_LEGAL;
	}

	public void setTELEFONE_REPRESENTANTE_LEGAL(String tELEFONE_REPRESENTANTE_LEGAL) {
		TELEFONE_REPRESENTANTE_LEGAL = tELEFONE_REPRESENTANTE_LEGAL;
	}

	@Override
	public String toString() {
		return "PessoaJuridica [PESSOA_JURIDICA_ID=" + PESSOA_JURIDICA_ID + ", RAZAO_SOCIAL=" + RAZAO_SOCIAL
				+ ", NOME_FANTASIA=" + NOME_FANTASIA + ", BAIRRO=" + BAIRRO + ", CIDADE=" + CIDADE + ", ESTADO="
				+ ESTADO + ", PAIS=" + PAIS + ", CEP=" + CEP + ", TELEFONE=" + TELEFONE + ", CNPJ=" + CNPJ
				+ ", INSCRICAO_ESTADUAL=" + INSCRICAO_ESTADUAL + ", INSCRICAO_MUNICIPAL=" + INSCRICAO_MUNICIPAL
				+ ", EMAIL=" + EMAIL + ", ATIVIDADES_DESENVOLVIDAS=" + ATIVIDADES_DESENVOLVIDAS
				+ ", GENERO_DA_ATIVIDADES=" + GENERO_DA_ATIVIDADES + ", ESPECE_DA_ATIVIDADE=" + ESPECE_DA_ATIVIDADE
				+ ", REPRESENTANTE_LEGAL_NOME=" + REPRESENTANTE_LEGAL_NOME + ", CPF_REPRESENTANTE_LEGAL="
				+ CPF_REPRESENTANTE_LEGAL + ", TELEFONE_REPRESENTANTE_LEGAL=" + TELEFONE_REPRESENTANTE_LEGAL + "]";
	}
}
