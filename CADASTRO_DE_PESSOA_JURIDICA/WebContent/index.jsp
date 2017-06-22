<%@taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<head>
<title>Tela inicial</title>
<link type="text/css" rel="stylesheet" href="resources/css/index.css" />
<link rel="icon" type="resources/images/png"
	href="resources/images/favicon-32x32.png" sizes="32x32" />
<link rel="icon" type="resources/images/png"
	href="resources/images/favicon-16x16.png" sizes="16x16" />
</head>
<body>
	<br>
	<div style="text-align: center">
		<nav>
			<ul>
				<sec:authorize access="hasRole('ADMIN')">
					<a href="novaPessoaJuridica"><font color=orange>Cadastrar um (a) nova pessoa jurídica</font></a> 
				|
		        <a href="listaPessoaJuridica"><font color=orange>Lista de pessoa juridica</font></a>
		        |
		        <a href="logout"><font color=orange>Sair</font></a>
				</sec:authorize>

				<sec:authorize access="hasRole('USER')">
					<a href="listaPessoaJuridicaUsuario"><font color=orange>Informações	básicas</font></a>
					|
		            <a href="logout"><font color=orange>Sair</font></a>
				</sec:authorize>
			</ul>
		</nav>
		<br>
		<br>
		<div id="bem_vindo">
			<h2>Bem Vindo ${param.username}</h2>
		</div>


		<sec:authorize access="hasRole('ADMIN')">
			<div align="center" id="img-users">
				<img style="border: 5px dashed;" width="100%" height="30%" src="resources/images/administracao.jpg" />
			</div>
		</sec:authorize>

		<sec:authorize access="hasRole('USER')">
			<div id="img-users">
				
				<img style="border: 5px dashed;" width="100%" height="30%" src="resources/images/usuario.jpg" />
			</div>
		</sec:authorize>
	</div>
</body>
</html>