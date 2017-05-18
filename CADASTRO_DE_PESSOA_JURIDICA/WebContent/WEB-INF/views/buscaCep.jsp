<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Buscar Cep</title>
<script type="text/javascript" charset="utf-8"
	src="resources/js/validarCpf.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"
	type="text/javascript"></script>
</head>
<body>
<body>
	<!-- Inicio do formulario -->
	<form method="get" action=".">

		<br /> 
		<label>CEP: <input name="CEP" type="text" id="CEP" value="" size="10" maxlength="9" onblur="pesquisacep(this.value);" /></label><br />
		<label>RUA: <input name="RUA" type="text" id="RUA" size="60" /></label><br />
		<label>BAIRRO: <input name="BAIRRO" type="text" id="BAIRRO"	size="40" /></label><br /> 
		<label>CIDADE: <input name="CIDADE"	type="text" id="CIDADE" size="40" /></label><br /> 
		<label>ESTADO: <input name="ESTADO" type="text" id="ESTADO" size="2" /></label><br />

	</form>
</body>
</body>

</html>

