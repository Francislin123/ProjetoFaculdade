<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.9.0/themes/base/jquery-ui.css" />
<script src="http://code.jquery.com/jquery-1.8.2.js"></script>
<script src="http://code.jquery.com/ui/1.9.0/jquery-ui.js"></script>
<link type="text/css" rel="stylesheet" href="resources/css/us.css" />
<script type="text/javascript" charset="utf-8" src="resources/js/validarCpf.js"></script>
<script type="text/javascript" src="resources/jquery/jquery-2.1.4.min.js"></script>
<script>
$(function() {
    $( "#DATA_DE_CONSTITUICAO" ).datepicker({dateFormat: "dd/mm/yyyy hh:mm:ss"});
});
</script>
</head>
<body>
	<h3>Alterar PJ - ${pessoaJuridica.PESSOA_JURIDICA_ID}</h3>
	
		<form:form action="alterarPessoaJuridica" method="PUT" modelAttribute="pessoaJuridica">
		
		    RAZAO SOCIAL:       <input type="hidden" name="id" value="${pessoaJuridica.PESSOA_JURIDICA_ID}" />
		    RAZAO SOCIAL: 		<input type="text" name="RAZAO_SOCIAL" value="${pessoaJuridica.RAZAO_SOCIAL}" /><br/> 
		   NOME FANTASIA: 		   <input type="text" name="NOME_FANTASIA" value="${pessoaJuridica.NOME_FANTASIA}" /><br/> 
		          CEP:   		   <input type="text" name="CEP" value="${pessoaJuridica.CEP}" /><br/>
		   RUA:          		   <input type="text" name="RUA" value="${pessoaJuridica.RUA}" /><br/>
		BAIRRO:          		   <input type="text" name="BAIRRO" value="${pessoaJuridica.BAIRRO}" /><br/>
		CIDADE:          		   <input type="text" name="CIDADE" value="${pessoaJuridica.CIDADE}" /><br/>
		ESTADO:        		       <input type="text" name="ESTADO" value="${pessoaJuridica.ESTADO}" /><br/>
		  PAIS:       		       <input type="text" name="PAIS" value="${pessoaJuridica.PAIS}" /><br/>
	  TELEFONE:          		   <input type="text" name="TELEFONE" value="${pessoaJuridica.TELEFONE}" /><br/>
		  CNPJ:          		   <input type="text" name="CNPJ" value="${pessoaJuridica.CNPJ}" /><br/>
INSCRICAO ESTADUAL:     		   <input type="text" name="INSCRICAO_ESTADUAL" value="${pessoaJuridica.INSCRICAO_ESTADUAL}" /><br/>
 INSCRICAO MUNICIPAL:    		   <input type="text" name="INSCRICAO_MUNICIPAL" value="${pessoaJuridica.INSCRICAO_MUNICIPAL}" /><br/>
         EMAIL:           		   <input type="text" name="EMAIL" value="${pessoaJuridica.EMAIL}" /><br/>
   DATA DE CONSTITUICAO:           <input type="text" name="DATA_DE_CONSTITUICAO" id="DATA_DE_CONSTITUICAO" value="<fmt:formatDate value="${pessoaJuridica.DATA_DE_CONSTITUICAO}" pattern="dd/MM/yyyy HH:mm:ss"/>"/><br/>
ATIVIDADES_DESENVOLVIDAS:          <input type="text" name="ATIVIDADES_DESENVOLVIDAS" value="${pessoaJuridica.ATIVIDADES_DESENVOLVIDAS}" /><br/>
   GENERO DA ATIVIDADES:           <input type="text" name="GENERO_DA_ATIVIDADES" value="${pessoaJuridica.GENERO_DA_ATIVIDADES}" /><br/>
   ESPECE_DA_ATIVIDADE:            <input type="text" name="ESPECE_DA_ATIVIDADE" value="${pessoaJuridica.ESPECE_DA_ATIVIDADE}" /><br/>
REPRESENTANTE LEGAL NOME:          <input type="text" name="REPRESENTANTE_LEGAL_NOME" value="${pessoaJuridica.REPRESENTANTE_LEGAL_NOME}" /><br/>
CPF_REPRESENTANTE_LEGAL:           <input type="text" name="CPF_REPRESENTANTE_LEGAL" value="${pessoaJuridica.CPF_REPRESENTANTE_LEGAL}" /><br/>
TELEFONE_REPRESENTANTE_LEGAL:      <input type="text" name="TELEFONE_REPRESENTANTE_LEGAL" value="${pessoaJuridica.CPF_REPRESENTANTE_LEGAL}" /><br/>
		           
		
				  <input type="submit" value="Alterar"/>
				  <form:hidden path="PESSOA_JURIDICA_ID" />
		
		</form:form>
</body>
</html>