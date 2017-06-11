<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<title>Add Pessoa Juridica</title>
<meta charset="UTF-8" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="viewport" content="width=device-width" />

<link type="text/css" rel="stylesheet" href="resources/css/background.css" />
<link type="text/css" rel="stylesheet" href="resources/css/adicionaPessoaJuridica.css" />
<script type="text/javascript" charset="utf-8" src="resources/js/validarCpf.js"></script>
<script type="text/javascript" src="resources/jquery/jquery-2.1.4.min.js"></script>

</head>
<body>
	<div style="text-align: center;">
		<h1>Pessoa jurídica com o nome fantasia ${param.NOME_FANTASIA} já
		existe, use outro nome!</h1>
	</div>
	<form action="adicionaPessoaJuridica" method="Post">
		<br />

		<form:errors path="pessoaJuridica.RAZAO_SOCIAL" cssClass="error" />
		<div>
			<label for="razao social">Razão Social: </label><input type="text"
				name="RAZAO_SOCIAL" required id="RAZAO_SOCIAL" autofocus="autofocus"
				placeholder="Digite aqui a sua Razão Social"
				value="${pessoaJuridica.RAZAO_SOCIAL}" />
		</div>
		<br />

		<form:errors path="pessoaJuridica.NOME_FANTASIA" cssClass="error" />
		<div>
			<label for="nome fantasia">Nome Fantasia: </label><input type="text"
				name="NOME_FANTASIA" required id="NOME_FANTASIA" autofocus="autofocus"
				placeholder="Digite aqui o seu Nome Fantasia"
				value="" />
		</div>
		<br />

		<form:errors path="pessoaJuridica.CEP" cssClass="error" />
		<div>
			<label for="CEP">CEP: </label><input name="CEP" required type="text" id="CEP"
				value="${pessoaJuridica.CEP}" size="10" maxlength="9" onblur="pesquisacep(this.value);" />
		</div>
		<br />

		<form:errors path="pessoaJuridica.RUA" cssClass="error" />
		<div>
			<label for="RUA">Rua: </label><input name="RUA" required type="text" id="RUA" value="${pessoaJuridica.RUA}" size="60" />
		</div>
		<br />

		<form:errors path="pessoaJuridica.BAIRRO" cssClass="error" />
		<div>
			<label for="BAIRRO">Bairro: </label><input name="BAIRRO" required type="text" id="BAIRRO" value="${pessoaJuridica.BAIRRO}" size="40" />
		</div>
		<br />

		<form:errors path="pessoaJuridica.CIDADE" cssClass="error" />
		<div>
			<label for="CIDADE">Cidade: </label><input name="CIDADE" required type="text" id="CIDADE" value="${pessoaJuridica.CIDADE}" size="40" />
		</div>
		<br />

		<form:errors path="pessoaJuridica.ESTADO" cssClass="error" />
		<div>
			<label for="ESTADO">Estado: </label><input name="ESTADO" required type="text" id="ESTADO" value="${pessoaJuridica.ESTADO}" size="2" />
		</div>
		<br />

		<form:errors path="pessoaJuridica.PAIS" cssClass="error" />
		<div>
			<label for="pais">Pais: </label><input name="PAIS" required type="text" id="PAIS" value="${pessoaJuridica.PAIS}" size="2" /> 
		</div>
		<br />

		<form:errors path="pessoaJuridica.TELEFONE" cssClass="error" />
		<div>
			<label for="telefone">Telefone: </label><input type="text"
				name="TELEFONE" required placeholder="Digite o Telefone"
				value="${pessoaJuridica.TELEFONE}" />
		</div>
		<br />

		<form:errors path="pessoaJuridica.CNPJ" cssClass="error" />
		<div>
			<label for="cnpj">CNPJ: </label><input type="text" name=CNPJ required
				placeholder="Digite o CNPJ" value="${pessoaJuridica.CNPJ}" />
		</div>
		<br />

		<form:errors path="pessoaJuridica.INSCRICAO_ESTADUAL" cssClass="error" />
		<div>
			<label for="inscriçao estadual">Inscrição Estadual: </label><input
				type="text" name="INSCRICAO_ESTADUAL" required
				placeholder="Inscrição Estadual"
				value="${pessoaJuridica.INSCRICAO_ESTADUAL}" />
		</div>
		<br />

		<form:errors path="pessoaJuridica.INSCRICAO_MUNICIPAL" cssClass="error" />
		<div>
			<label for="inscriçao municipal">Inscrição Municipal: </label><input
				type="text" name="INSCRICAO_MUNICIPAL" required
				placeholder="Inscrição Municipal"
				value="${pessoaJuridica.INSCRICAO_MUNICIPAL}" />
		</div>
		<br />

		<form:errors path="pessoaJuridica.EMAIL" cssClass="error" />
		<div>
			<label for="email">E-mail: </label><input type="email" name="EMAIL" required
				placeholder="email@email.com" value="${pessoaJuridica.EMAIL}" />
		</div>
		<br />

		<form:errors path="pessoaJuridica.ATIVIDADES_DESENVOLVIDAS" cssClass="error" />
		<div>
			<label for="atividades desenvolvidas">Atividade(s)
				Desenvolvida(s): </label><input type="text" name="ATIVIDADES_DESENVOLVIDAS" required
				placeholder="Atividade(s) Desenvolvida(s)"
				value="${pessoaJuridica.ATIVIDADES_DESENVOLVIDAS}" />
		</div>
		<br />

		<form:errors path="pessoaJuridica.GENERO_DA_ATIVIDADES"
			cssClass="error" />
		<div>
			<label for="genero de atividades">Genero de Atividade: </label><input
				type="text" name="GENERO_DA_ATIVIDADES" required
				placeholder="Digite o Genero de Atividade"
				value="${pessoaJuridica.GENERO_DA_ATIVIDADES}" />
		</div>
		<br />

		<form:errors path="pessoaJuridica.ESPECE_DA_ATIVIDADE"
			cssClass="error" />
		<div>
			<label for="especie da atividade">Especie da atividade: </label><input
				type="text" name="ESPECE_DA_ATIVIDADE" required
				placeholder="Digite a Especie de Atividade"
				value="${pessoaJuridica.ESPECE_DA_ATIVIDADE}" />
		</div>
		<br />

		<form:errors path="pessoaJuridica.REPRESENTANTE_LEGAL_NOME" cssClass="error" />
		<div>
			<label for="representante legal nome">Representante
				Legal,Nome: </label><input type="text" name="REPRESENTANTE_LEGAL_NOME" required
				placeholder="Representante legal nome"
				value="${pessoaJuridica.REPRESENTANTE_LEGAL_NOME}" />
		</div>
		<br />

		<form:errors path="pessoaJuridica.CPF_REPRESENTANTE_LEGAL"
			cssClass="error" />
		<div>
			<label for="cpf representante legal nome">Representante
				Legal,CPF: </label> <input type="text" name="CPF_REPRESENTANTE_LEGAL" required
				placeholder="Representante legal CPF"
				value="${pessoaJuridica.CPF_REPRESENTANTE_LEGAL}" />
		</div>
		<br />
		<form:errors path="pessoaJuridica.TELEFONE_REPRESENTANTE_LEGAL"	cssClass="error" />
		<div>
			<label for="telefone representante legal nome">Representante
				Legal,Telefone: </label>
				<input type="text" name="TELEFONE_REPRESENTANTE_LEGAL" required	placeholder="Telefone do representante legal"
				value="${pessoaJuridica.TELEFONE_REPRESENTANTE_LEGAL}" />
		</div>
		<br />
		<div class="button">
			<button type="submit">Enviar</button>
		</div>

		<div class="clean">
			<button type="reset">Limpar caixas</button>
		</div>
	</form>
</body>
</html>