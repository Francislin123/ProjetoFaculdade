<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Lista de Pessoas Juridicas usuários</title>
</head>
<body>
	<br />
	<br />
	<table border="1">
		<tr>
			<th>CEP</th>
			<th>RUA</th>
			<th>BAIRRO</th>
			<th>CIDADE</th>
			<th>ESTADO</th>
			<th>PAIS</th>
			<th>ATIVIDADES DESENVOLVIDAS</th>
			<th>GENERO DA ATIVIDADES</th>
			<th>ESPECE DA ATIVIDADE</th>
		</tr>
		<c:forEach items="${pessoaJuridica}" var="pessoaJuridica">
			<tr>
				<td>${pessoaJuridica.CEP}</td>
				<td>${pessoaJuridica.RUA}</td>
				<td>${pessoaJuridica.BAIRRO}</td>
				<td>${pessoaJuridica.CIDADE}</td>
				<td>${pessoaJuridica.ESTADO}</td>
				<td>${pessoaJuridica.PAIS}</td>
				<td>${pessoaJuridica.ATIVIDADES_DESENVOLVIDAS}</td>
				<td>${pessoaJuridica.GENERO_DA_ATIVIDADES}</td>
				<td>${pessoaJuridica.ESPECE_DA_ATIVIDADE}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>