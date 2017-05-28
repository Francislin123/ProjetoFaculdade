<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html>
<head>
<title>Tela inicial</title>
<style type="text/css">
body {
	background-image: url('https://crunchify.com/bg.png');
}
</style>
</head>
<body>
	<br>
	<div style="text-align: center">
		<h2>
			Bem Vindo!<br>
		</h2>
		<h3>
			<sec:authorize access="hasRole('ADMIN')">
				<a href="novaPessoaJuridica">Cadastro de Pessoa juridica </a>
				<br>
				<a href="listaPessoaJuridica">Lista de Pessoa juridica</a>
			</sec:authorize>
			<br>
			<sec:authorize access="hasRole('USER')">
				<a href="listaPessoaJuridicaUsuario">Lista de Pessoas juridicas para os usuário</a>
			</sec:authorize>
		</h3>
	</div>
</body>
</html>