<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link type="text/css" rel="stylesheet"
	href="resources/css/pessoaJuridicaAdicionado.css" />
<link rel="icon" type="resources/images/png"
	href="resources/images/favicon-32x32.png" sizes="32x32" />
<link rel="icon" type="resources/images/png"
	href="resources/images/favicon-16x16.png" sizes="16x16" />
<title>Pessoa Juridica</title>
</head>
<body>
<br />
 <div style="text-align: center">
	<nav>
		<ul>
			<li><a href="index.jsp"><font color=orange>Menu	inicial</font></a></li>
			<li>|</li>
			<li><a href="novaPessoaJuridica"><font color=orange>Nova Pessoa Juridica</font></a></li>
			<li>|</li>
			<li><a href="listaPessoaJuridica"><font color=orange>Lista de Pessoas Juridicas</font></a></li>
			<li>|</li>
			<li><a href="logout"><font color=orange>Sair</font></a></li>
		</ul>
	</nav>
	</div>
	<br />
	<br />
	<h2>Pessoa Juridica ${param.NOME_FANTASIA} adicionado com sucesso!</h2>
	<br />
	<br />
</body>
</html>