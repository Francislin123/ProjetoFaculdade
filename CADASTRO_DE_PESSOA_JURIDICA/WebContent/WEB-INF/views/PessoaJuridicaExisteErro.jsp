<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Pessoa Juridica</title>
</head>
<body>
    
    <H1>Pessoa Juridica ${param.NOME_FANTASIA} ja existe!</h1>
    <br />
    <br />
    <a href="novaPessoaJuridica">Nova Pessoa Juridica</a>
        <br />
    <a href="listaPessoaJuridica">Lista de Pessoas Juridicas</a>
	<br />
	<br />
</body>
</html>