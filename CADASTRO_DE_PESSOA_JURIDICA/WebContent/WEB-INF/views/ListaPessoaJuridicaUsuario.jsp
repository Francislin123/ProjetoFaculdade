<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link type="text/css" rel="stylesheet"
	href="resources/css/listaPessoaJuridicaUsuario.css" />
<link type="text/css" rel="stylesheet"
	href="resources/css/listaPessoaJuridicaUsuarioTable.css" />
<link type="text/css" rel="stylesheet"
	href="resources/css/listaPessoaJuridica.css" />
<link type="text/css" rel="stylesheet" href="resources/css/index.css" />
<link rel="icon" type="resources/images/png"
	href="resources/images/favicon-32x32.png" sizes="32x32" />
<link rel="icon" type="resources/images/png"
	href="resources/images/favicon-16x16.png" sizes="16x16" />
<title>Lista de Pessoas Juridicas</title>
</head>
<body>
<br />
 <div style="text-align: center">
	<nav>
		<ul>
			<li><a href="index.jsp"><font color=orange>Menu inicial</font></a></li>
			<li>|</li>
			<li><a href="logout"><font color=orange>Sair</font></a></li>
		</ul>
	</nav>
		</div>
	<br>
	<br>
	<div id="tabe">Informações básicas</div>
	<br>

	<c:forEach items="${pessoaJuridica}" var="pessoaJuridica">

		<table class="tg">
			<tr>
				<td class="tg-6bre">CEP</td>
				<td class="tg-yw4l">${pessoaJuridica.cep}</td>
			</tr>
			<tr>
				<td class="tg-6bre">Rua</td>
				<td class="tg-yw4l">${pessoaJuridica.rua}</td>
			</tr>
			<tr>
				<td class="tg-6bre">Bairro</td>
				<td class="tg-yw4l">${pessoaJuridica.bairro}</td>
			</tr>
			<tr>
				<td class="tg-6bre">Cidade</td>
				<td class="tg-yw4l">${pessoaJuridica.cidade}</td>
			</tr>
			<tr>
				<td class="tg-6bre">Estado</td>
				<td class="tg-yw4l">${pessoaJuridica.estado}</td>
			</tr>
			<tr>
				<td class="tg-6bre">Pais</td>
				<td class="tg-yw4l">${pessoaJuridica.pais}</td>
			</tr>
			<tr>
				<td class="tg-6bre">Telefone</td>
				<td class="tg-yw4l">${pessoaJuridica.telefone}</td>
			</tr>
			<tr>
				<td class="tg-6bre">CNPJ</td>
				<td class="tg-yw4l">${pessoaJuridica.cnpj}</td>
			</tr>
			<tr>
				<td class="tg-6bre">Inscrição Estadual</td>
				<td class="tg-yw4l">${pessoaJuridica.inscricaoEstadual}</td>
			</tr>
			<tr>
				<td class="tg-6bre">Inscrição Municipal</td>
				<td class="tg-yw4l">${pessoaJuridica.inscricaoMunicipal}</td>
			</tr>
			<tr>
				<td class="tg-6bre">E-mail</td>
				<td class="tg-yw4l">${pessoaJuridica.email}</td>
			</tr>
			<tr>
				<td class="tg-6bre">Data de Constituição</td>
				<td class="tg-yw4l"><fmt:formatDate
						value="${pessoaJuridica.dataConstituicao}"
						pattern="dd/MM/yyyy HH:mm:ss" /></td>
			</tr>

			<tr>
				<td class="tg-6bre">Atividade(s) Desenvolvida(s)</td>
				<td class="tg-yw4l">${pessoaJuridica.atividadesDesenvolvidas}</td>
			</tr>

			<tr>
				<td class="tg-6bre">Genero de Atividade</td>
				<td class="tg-yw4l">${pessoaJuridica.generoAtividade}</td>
			</tr>

			<tr>
				<td class="tg-6bre">Especie da atividade</td>
				<td class="tg-yw4l">${pessoaJuridica.especieAtividade}</td>
			</tr>
		</table>

		<br>
		<br>
		<br>
	</c:forEach>

</body>
</html>