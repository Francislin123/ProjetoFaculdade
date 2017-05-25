<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>Pessoa Juridica Erro</title>
<meta charset="UTF-8" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="viewport" content="width=device-width" />

<link type="text/css" rel="stylesheet" href="resources/css/us.css" />
<script type="text/javascript" charset="utf-8" src="resources/js/validarCpf.js"></script>
<script type="text/javascript" src="resources/jquery/jquery-2.1.4.min.js"></script>

</head>
<body>
	<h3>Adicionar Pessoa Juridica</h3>

	<form action="adicionaPessoaJuridica" method="Post">
		<br />

		<form:errors path="pessoaJuridica.RAZAO_SOCIAL" cssClass="error" />
		<br /> RAZAO SOCIAL: <input type="text" name="RAZAO_SOCIAL"
			autofocus="autofocus" placeholder="RAZAO SOCIAL"
			value="${pessoaJuridica.RAZAO_SOCIAL}" /> <br />

		<form:errors path="pessoaJuridica.NOME_FANTASIA" cssClass="error" />
		<br /> NOME FANTASIA: <input type="text" name="NOME_FANTASIA"
			autofocus="autofocus" placeholder="NOME FANTASIA"
			value="${pessoaJuridica.NOME_FANTASIA}" /> <br />

		<form:errors path="pessoaJuridica.CEP" cssClass="error" />
		<br /> <label>CEP: <input name="CEP" type="text" id="CEP"
			value="${pessoaJuridica.CEP}" size="10" maxlength="9" onblur="pesquisacep(this.value);" /></label><br />

		<form:errors path="pessoaJuridica.RUA" cssClass="error" />
		<label>RUA: <input name="RUA" value="${pessoaJuridica.RUA}" type="text" id="RUA" size="60" /></label><br />

		<form:errors path="pessoaJuridica.BAIRRO" cssClass="error" />
		<label>BAIRRO: <input name="BAIRRO" value="${pessoaJuridica.BAIRRO}" type="text" id="BAIRRO"
			size="40" /></label><br />

		<form:errors path="pessoaJuridica.CIDADE" cssClass="error" />
		<label>CIDADE: <input name="CIDADE" value="${pessoaJuridica.CIDADE}" type="text" id="CIDADE"
			size="40" /></label><br />

		<form:errors path="pessoaJuridica.ESTADO" cssClass="error" />
		<label>ESTADO: <input name="ESTADO" value="${pessoaJuridica.ESTADO}" type="text" id="ESTADO"
			size="2" /></label><br />

		<form:errors path="pessoaJuridica.PAIS" cssClass="error" />
		<br /> PAIS: <input type="text" name="PAIS" placeholder="PAIS"
			value="${pessoaJuridica.PAIS}" /> <br />

		<form:errors path="pessoaJuridica.TELEFONE" cssClass="error" />
		<br /> TELEFONE: <input type="text" name="TELEFONE"
			placeholder="TELEFONE" value="${pessoaJuridica.TELEFONE}" /> <br />

		<form:errors path="pessoaJuridica.CNPJ" cssClass="error" />
		<br /> CNPJ: <input type="text" name="CNPJ" placeholder="CNPJ"
			value="${pessoaJuridica.CNPJ}" /> <br />

		<form:errors path="pessoaJuridica.INSCRICAO_ESTADUAL" cssClass="error" />
		<br /> INSCRICAO_ESTADUAL <input type="text"
			name="INSCRICAO_ESTADUAL" placeholder="CNPJ"
			value="${pessoaJuridica.INSCRICAO_ESTADUAL}" /> <br />

		<form:errors path="pessoaJuridica.INSCRICAO_MUNICIPAL"
			cssClass="error" />
		<br /> INSCRICAO_MUNICIPAL: <input type="text"
			name="INSCRICAO_MUNICIPAL" placeholder="INSCRICAO_MUNICIPAL"
			value="${pessoaJuridica.INSCRICAO_MUNICIPAL}" /> <br />

		<form:errors path="pessoaJuridica.EMAIL" cssClass="error" />
		<br /> EMAIL: <input type="text" name="EMAIL" placeholder="EMAIL"
			value="${pessoaJuridica.EMAIL}" /> <br />

		<form:errors path="pessoaJuridica.ATIVIDADES_DESENVOLVIDAS"
			cssClass="error" />
		<br /> ATIVIDADES DESENVOLVIDAS: <input type="text"
			name="ATIVIDADES_DESENVOLVIDAS"
			placeholder="ATIVIDADES_DESENVOLVIDAS"
			value="${pessoaJuridica.ATIVIDADES_DESENVOLVIDAS}" /> <br />

		<form:errors path="pessoaJuridica.GENERO_DA_ATIVIDADES"
			cssClass="error" />
		<br /> GENERO DA ATIVIDADES: <input type="text"
			name="GENERO_DA_ATIVIDADES" placeholder="GENERO_DA_ATIVIDADES"
			value="${pessoaJuridica.GENERO_DA_ATIVIDADES}" /> <br />

		<form:errors path="pessoaJuridica.ESPECE_DA_ATIVIDADE"
			cssClass="error" />
		<br /> ESPECE DA ATIVIDADE: <input type="text"
			name="ESPECE_DA_ATIVIDADE" placeholder="ESPECE_DA_ATIVIDADE"
			value="${pessoaJuridica.ESPECE_DA_ATIVIDADE}" /> <br />

		<form:errors path="pessoaJuridica.REPRESENTANTE_LEGAL_NOME"
			cssClass="error" />
		<br /> REPRESENTANTE LEGAL NOME: <input type="text"
			name="REPRESENTANTE_LEGAL_NOME"
			placeholder="REPRESENTANTE_LEGAL_NOME"
			value="${pessoaJuridica.REPRESENTANTE_LEGAL_NOME}" /> <br />

		<form:errors path="pessoaJuridica.CPF_REPRESENTANTE_LEGAL"
			cssClass="error" />
		<br /> CPF REPRESENTANTE LEGAL: <input type="text"
			name="CPF_REPRESENTANTE_LEGAL" placeholder="CPF_REPRESENTANTE_LEGAL"
			value="${pessoaJuridica.CPF_REPRESENTANTE_LEGAL}" /> <br />

		<form:errors path="pessoaJuridica.TELEFONE_REPRESENTANTE_LEGAL"
			cssClass="error" />
		<br /> TELEFONE REPRESENTANTE LEGAL: <input type="text"
			name="TELEFONE_REPRESENTANTE_LEGAL"
			placeholder="TELEFONE_REPRESENTANTE_LEGAL"
			value="${pessoaJuridica.TELEFONE_REPRESENTANTE_LEGAL}" /> <br /> <input
			type="submit" value="Adiciona">

	</form>
</body>
</html>