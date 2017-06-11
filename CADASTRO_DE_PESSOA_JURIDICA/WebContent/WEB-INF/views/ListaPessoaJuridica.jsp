<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link type="text/css" rel="stylesheet" href="resources/css/listaPessoaJuridica.css" />
<link type="text/css" rel="stylesheet" href="resources/css/listaPessoajuridicaTable.css" />
<link type="text/css" rel="stylesheet" href="resources/css/pessoaJuridicaAdicionado.css" />
<link type="text/css" rel="stylesheet" href="resources/css/index.css" />
<title>Lista de Pessoas Juridicas</title>
</head>
<body>
	<br />
	<nav>
		<ul>
			<li><a href="index.jsp"><font color=orange>Menu inicial</font></a></li>
			<li>I</li>
			<li><a href="novaPessoaJuridica"><font color=orange>Cadastrar um (a) nova pessoa jurídica </font></a></li>
			<li>I</li>
			<li><a href="listaPessoaJuridica"><font color=orange>Lista de Pessoas Juridicas</font></a></li>
		</ul>
	</nav>
	<br />
	<br />
	<div style="text-align: center;">
		<div id="tabe">Lista de Cadastro de Pessoas Juridica</div>
		<br>

		<c:forEach items="${pessoaJuridica}" var="pessoaJuridica">

			<table class="tg">


				<tr>
					<td class="tg-6bre">Razão Social</td>
					<td class="tg-yw4l">${pessoaJuridica.RAZAO_SOCIAL}</td>
				</tr>
				<tr>
					<td class="tg-6bre">Nome Fantasia</td>
					<td class="tg-yw4l">${pessoaJuridica.NOME_FANTASIA}</td>
				</tr>
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
				<tr>
					<td class="tg-6bre">Genero de Atividade</td>
					<td class="tg-yw4l">${pessoaJuridica.GENERO_DA_ATIVIDADES}</td>
				</tr>

				<tr>
					<td class="tg-6bre">Especie da atividade</td>
					<td class="tg-yw4l">${pessoaJuridica.ESPECE_DA_ATIVIDADE}</td>
				</tr>

				<tr>
					<td class="tg-6bre">Representante Legal,Nome</td>
					<td class="tg-yw4l">${pessoaJuridica.REPRESENTANTE_LEGAL_NOME}</td>
				</tr>
				<tr>
					<td class="tg-6bre">Representante Legal,CPF</td>
					<td class="tg-yw4l">${pessoaJuridica.CPF_REPRESENTANTE_LEGAL}</td>
				</tr>
				<tr>
					<td class="tg-6bre">Representante Legal,Telefone</td>
					<td class="tg-yw4l">${pessoaJuridica.TELEFONE_REPRESENTANTE_LEGAL}</td>
				</tr>
				<tr>
					<td class="tg-6bre">Opções</td>
					<td class="tg-yw4l"><a
						href="removePessoaJuridica?PESSOA_JURIDICA_ID=${pessoaJuridica.PESSOA_JURIDICA_ID}"><font
							color=red>Remover</font></a> I <a
						href="buscarPessoaJuridica?PESSOA_JURIDICA_ID=${pessoaJuridica.PESSOA_JURIDICA_ID}"><font
							color=blue>Alterar</font></a></td>
				</tr>
			</table>
			<br>
			<br>
			<br>
		</c:forEach>
	</div>
</body>
</html>