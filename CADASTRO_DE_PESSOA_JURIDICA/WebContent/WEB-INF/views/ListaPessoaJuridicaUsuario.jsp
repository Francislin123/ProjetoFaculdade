<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link type="text/css" rel="stylesheet" href="resources/css/listaPessoaJuridicaUsuario.css" />
<link type="text/css" rel="stylesheet" href="resources/css/listaPessoaJuridicaUsuarioTable.css" />
<link type="text/css" rel="stylesheet" href="resources/css/listaPessoaJuridica.css" />
<link type="text/css" rel="stylesheet" href="resources/css/index.css" />
<title>Lista de Pessoas Juridicas</title>
</head>
<body>
	<nav>
		<ul>
			<li><a href="index.jsp"><font color=orange>Menu inicial</font></a></li>
		</ul>
	</nav>
	<br>
	<br>
	<div id="tabe">Informações básicas</div>
	<br>

	<c:forEach items="${pessoaJuridica}" var="pessoaJuridica">

		<table class="tg">
			<tr>
				<td class="tg-6bre">CEP</td>
				<td class="tg-yw4l">${pessoaJuridica.CEP}</td>
			</tr>
			<tr>
				<td class="tg-6bre">Rua</td>
				<td class="tg-yw4l">${pessoaJuridica.RUA}</td>
			</tr>
			<tr>
				<td class="tg-6bre">Bairro</td>
				<td class="tg-yw4l">${pessoaJuridica.BAIRRO}</td>
			</tr>
			<tr>
				<td class="tg-6bre">Cidade</td>
				<td class="tg-yw4l">${pessoaJuridica.CIDADE}</td>
			</tr>
			<tr>
				<td class="tg-6bre">Estado</td>
				<td class="tg-yw4l">${pessoaJuridica.ESTADO}</td>
			</tr>
			<tr>
				<td class="tg-6bre">Pais</td>
				<td class="tg-yw4l">${pessoaJuridica.PAIS}</td>
			</tr>
			<tr>
				<td class="tg-6bre">Telefone</td>
				<td class="tg-yw4l">${pessoaJuridica.TELEFONE}</td>
			</tr>
			<tr>
				<td class="tg-6bre">CNPJ</td>
				<td class="tg-yw4l">${pessoaJuridica.CNPJ}</td>
			</tr>
			<tr>
				<td class="tg-6bre">Inscrição Estadual</td>
				<td class="tg-yw4l">${pessoaJuridica.INSCRICAO_ESTADUAL}</td>
			</tr>
			<tr>
				<td class="tg-6bre">Inscrição Municipal</td>
				<td class="tg-yw4l">${pessoaJuridica.INSCRICAO_MUNICIPAL}</td>
			</tr>
			<tr>
				<td class="tg-6bre">E-mail</td>
				<td class="tg-yw4l">${pessoaJuridica.EMAIL}</td>
			</tr>
			<tr>
				<td class="tg-6bre">Data de Constituição</td>
				<td class="tg-yw4l"><fmt:formatDate
						value="${pessoaJuridica.DATA_DE_CONSTITUICAO}"
						pattern="dd/MM/yyyy HH:mm:ss" /></td>
			</tr>

			<tr>
				<td class="tg-6bre">Atividade(s) Desenvolvida(s)</td>
				<td class="tg-yw4l">${pessoaJuridica.ATIVIDADES_DESENVOLVIDAS}</td>
			</tr>

			<tr>
				<td class="tg-6bre">Genero de Atividade</td>
				<td class="tg-yw4l">${pessoaJuridica.GENERO_DA_ATIVIDADES}</td>
			</tr>

			<tr>
				<td class="tg-6bre">Especie da atividade</td>
				<td class="tg-yw4l">${pessoaJuridica.ESPECE_DA_ATIVIDADE}</td>
			</tr>
		</table>

		<br>
		<br>
		<br>
	</c:forEach>

</body>
</html>