<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Adicionar Pessoa Juridica</title>
<meta charset="UTF-8"/>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="viewport" content="width=device-width" />
    
	<script type="text/javascript" src="js/validarCpf.js"></script>
	
	<style>
	.error 
	{
		color: #ff0000;
		font-weight: bold;
	}
	#listOfEmployees tr:first-child{
		font-weight: bold;
	}
	</style>
	
</head>
<body>
	<h3>Adicionar Pessoa Juridica</h3>
	
	<form action="adicionaPessoaJuridica" method="Post" onSubmit="return chkCEP(this.CEP.value)">
	    <br/>
	    <form:errors path="pessoaJuridica.RAZAO_SOCIAL" cssClass="error" /><br/>
	    RAZAO SOCIAL:                 <input type="text" name="RAZAO_SOCIAL" autofocus="autofocus" placeholder="RAZAO SOCIAL" value="${pessoaJuridica.RAZAO_SOCIAL}" />
	    							  
		<br/>
		<form:errors path="pessoaJuridica.NOME_FANTASIA" cssClass="error" /><br/>
		NOME FANTASIA:                <input type="text" name="NOME_FANTASIA" autofocus="autofocus" placeholder="NOME FANTASIA" value="${pessoaJuridica.NOME_FANTASIA}" />
		<br/> 
		<form:errors path="pessoaJuridica.BAIRRO" cssClass="error" /><br/>
		BAIRRO:                       <input type="text" name="BAIRRO" autofocus="autofocus" placeholder="BAIRRO" value="${pessoaJuridica.BAIRRO}" />
		<br/>
		<form:errors path="pessoaJuridica.CIDADE" cssClass="error" /><br/>
		CIDADE:	                      <input type="text" name="CIDADE" placeholder="CIDADE" value="${pessoaJuridica.CIDADE}" />
		<br/>
		<form:errors path="pessoaJuridica.ESTADO" cssClass="error" /><br/>
		ESTADO:	                      <input type="text" name="ESTADO" placeholder="ESTADO" value="${pessoaJuridica.ESTADO}" />
		<br/>
		<form:errors path="pessoaJuridica.PAIS" cssClass="error" /><br/>
		PAIS:	                      <input type="text" name="PAIS" placeholder="PAIS" value="${pessoaJuridica.PAIS}" />
		<br/>
		<form:errors path="pessoaJuridica.CEP" cssClass="error" /><br/>
		CEP:	                      <input type="text" name="CEP" placeholder="CEP" value="${pessoaJuridica.CEP}" />
		<br/>
		<form:errors path="pessoaJuridica.TELEFONE" cssClass="error" /><br/>
		TELEFONE:                     <input type="text" name="TELEFONE" placeholder="TELEFONE" value="${pessoaJuridica.TELEFONE}" />
		<br/>
		<form:errors path="pessoaJuridica.CNPJ" cssClass="error" /><br/>
		CNPJ:	                      <input type="text" name="CNPJ" placeholder="CNPJ" value="${pessoaJuridica.CNPJ}" />
		<br/>
		<form:errors path="pessoaJuridica.INSCRICAO_ESTADUAL" cssClass="error" /><br/>
		INSCRICAO_ESTADUAL            <input type="text" name="INSCRICAO_ESTADUAL" placeholder="CNPJ" value="${pessoaJuridica.INSCRICAO_ESTADUAL}" />
		<br/>
		<form:errors path="pessoaJuridica.INSCRICAO_MUNICIPAL" cssClass="error" /><br/>
		INSCRICAO_MUNICIPAL:          <input type="text" name="INSCRICAO_MUNICIPAL" placeholder="INSCRICAO_MUNICIPAL" value="${pessoaJuridica.INSCRICAO_MUNICIPAL}" />
		<br/>
		<form:errors path="pessoaJuridica.EMAIL" cssClass="error" /><br/>
		EMAIL:                        <input type="text" name="EMAIL" placeholder="EMAIL" value="${pessoaJuridica.EMAIL}" />
		<br/>
		<form:errors path="pessoaJuridica.ATIVIDADES_DESENVOLVIDAS" cssClass="error" /><br/>
		ATIVIDADES DESENVOLVIDAS:     <input type="text" name="ATIVIDADES_DESENVOLVIDAS" placeholder="ATIVIDADES_DESENVOLVIDAS" value="${pessoaJuridica.ATIVIDADES_DESENVOLVIDAS}" />
		<br/>
		<form:errors path="pessoaJuridica.GENERO_DA_ATIVIDADES" cssClass="error" /><br/>
		GENERO DA ATIVIDADES:         <input type="text" name="GENERO_DA_ATIVIDADES" placeholder="GENERO_DA_ATIVIDADES" value="${pessoaJuridica.GENERO_DA_ATIVIDADES}" />
		<br/>
		<form:errors path="pessoaJuridica.ESPECE_DA_ATIVIDADE" cssClass="error" /><br/>
		ESPECE DA ATIVIDADE:          <input type="text" name="ESPECE_DA_ATIVIDADE" placeholder="ESPECE_DA_ATIVIDADE" value="${pessoaJuridica.ESPECE_DA_ATIVIDADE}" />
		<br/>
		<form:errors path="pessoaJuridica.REPRESENTANTE_LEGAL_NOME" cssClass="error" /><br/>
		REPRESENTANTE LEGAL NOME:     <input type="text" name="REPRESENTANTE_LEGAL_NOME" placeholder="REPRESENTANTE_LEGAL_NOME" value="${pessoaJuridica.REPRESENTANTE_LEGAL_NOME}" />
		<br/>
		<form:errors path="pessoaJuridica.CPF_REPRESENTANTE_LEGAL" cssClass="error" /><br/>
		CPF REPRESENTANTE LEGAL:      <input type="text" name="CPF_REPRESENTANTE_LEGAL" placeholder="CPF_REPRESENTANTE_LEGAL" value="${pessoaJuridica.CPF_REPRESENTANTE_LEGAL}" />
		<br/>
		<form:errors path="pessoaJuridica.TELEFONE_REPRESENTANTE_LEGAL" cssClass="error" /><br/>
		TELEFONE REPRESENTANTE LEGAL: <input type="text" name="TELEFONE_REPRESENTANTE_LEGAL" placeholder="TELEFONE_REPRESENTANTE_LEGAL" value="${pessoaJuridica.TELEFONE_REPRESENTANTE_LEGAL}" />
		<br/>
		
		<input type="submit" value="Adcionar" > 
		
	</form>
</body>
</html>