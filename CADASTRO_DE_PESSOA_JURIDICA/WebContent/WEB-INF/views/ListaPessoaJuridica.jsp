<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Lista de Pessoas Juridicas</title>
</head>
<body>
	<a href="novoCliente">Nova pessoa juridica</a>
	<br />
	<br />
	<table border="3">
		<tr>
			<th>ID</th>
			<th>RAZAO SOCIAL</th>
			<th>NOME FANTASIA</th>
			<th>CEP</th>
			<th>RUA</th>
			<th>BAIRRO</th>
			<th>CIDADE</th>
			<th>ESTADO</th>
			<th>PAIS</th>
			<th>TELEFONE</th>
			<th>CNPJ</th>
			<th>INSCRICAO ESTADUAL</th>
			<th>INSCRICAO MUNICIPAL</th>
			<th>EMAIL</th>
			<th>DATA DE CONSTITUICAO</th>
			<th>ATIVIDADES DESENVOLVIDAS</th>
			<th>GENERO DA ATIVIDADES</th>
			<th>ESPECE DA ATIVIDADE</th>
			<th>REPRESENTANTE LEGAL NOME</th>
			<th>CPF REPRESENTANTE LEGAL</th>
			<th>TELEFONE REPRESENTANTE LEGAL</th>
			<th>Opções</th>
		</tr>
		<c:forEach items="${pessoaJuridica}" var="pessoaJuridica">
			<tr>
				<td>${pessoaJuridica.PESSOA_JURIDICA_ID}</td>
				<td>${pessoaJuridica.RAZAO_SOCIAL}</td>
				<td>${pessoaJuridica.NOME_FANTASIA}</td>
				<td>${pessoaJuridica.CEP}</td>
				<td>${pessoaJuridica.RUA}</td>
				<td>${pessoaJuridica.BAIRRO}</td>
				<td>${pessoaJuridica.CIDADE}</td>
				<td>${pessoaJuridica.ESTADO}</td>
				<td>${pessoaJuridica.PAIS}</td>
				<td>${pessoaJuridica.TELEFONE}</td>
				<td>${pessoaJuridica.CNPJ}</td>
				<td>${pessoaJuridica.INSCRICAO_ESTADUAL}</td>
				<td>${pessoaJuridica.INSCRICAO_MUNICIPAL}</td>
				<td>${pessoaJuridica.EMAIL}</td>
				<td><fmt:formatDate
						value="${pessoaJuridica.DATA_DE_CONSTITUICAO}"
						pattern="dd/MM/yyyy HH:mm:ss" /></td>
				<td>${pessoaJuridica.ATIVIDADES_DESENVOLVIDAS}</td>
				<td>${pessoaJuridica.GENERO_DA_ATIVIDADES}</td>
				<td>${pessoaJuridica.ESPECE_DA_ATIVIDADE}</td>
				<td>${pessoaJuridica.REPRESENTANTE_LEGAL_NOME}</td>
				<td>${pessoaJuridica.CPF_REPRESENTANTE_LEGAL}</td>
				<td>${pessoaJuridica.TELEFONE_REPRESENTANTE_LEGAL}</td>
				<td><a
					href="removeClientes?id=${pessoaJuridica.PESSOA_JURIDICA_ID}">Remover</a>
					<a href="mostraClientes?id=${pessoaJuridica.PESSOA_JURIDICA_ID}">Alterar</a>
				<td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>