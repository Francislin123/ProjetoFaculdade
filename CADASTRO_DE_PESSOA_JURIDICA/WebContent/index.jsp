<%@taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<head>
<title>Tela inicial</title>
<link type="text/css" rel="stylesheet" href="resources/css/index.css" />
</head>
<body>
	<div style="text-align: center">
		<nav>
			<ul>
				<sec:authorize access="hasRole('ADMIN')">
					<a href="novaPessoaJuridica"><font color=orange>Cadastro
							de Pessoa juridica</font></a> |
		        <a href="listaPessoaJuridica"><font color=orange>Lista
							de Pessoa juridica</font></a>
				</sec:authorize>

				<sec:authorize access="hasRole('USER')">
					<a href="listaPessoaJuridicaUsuario"><font color=orange>Informações básicas</font></a>
				</sec:authorize>
			</ul>
		</nav>
		<div id="bem_vindo">
			<h2>Bem Vindo ${param.username}</h2>
		</div>


	<sec:authorize access="hasRole('ADMIN')">
		<div id="img-users">
			<img style="border: 5px dashed; width: 1050px;"
				src="resources/images/administracao.jpg">
		</div>
	</sec:authorize>

	<sec:authorize access="hasRole('USER')">
		<div id="img-users">
			<img style="border: 5px dashed; width: 700px;"
				src="resources/images/usuario.jpg">
		</div>
	</sec:authorize>
	</div>
</body>
</html>