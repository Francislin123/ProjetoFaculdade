<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Alteração de PJ</title>

<!-- Css     -->
<link rel="stylesheet" href="http://code.jquery.com/ui/1.9.0/themes/base/jquery-ui.css" />
<link type="text/css" rel="stylesheet" href="resources/css/alterarPessoaJuridica.css" />
<!-- Css fim -->

<!-- JS -->
<script src="http://code.jquery.com/jquery-1.8.2.js"></script>
<script src="http://code.jquery.com/ui/1.9.0/jquery-ui.js"></script>
<script type="text/javascript" charset="utf-8" src="resources/js/validarCpf.js"></script>
<script type="text/javascript" charset="utf-8" src="resources/js/dateCalendar.js"></script>
<script type="text/javascript" src="resources/jquery/jquery-2.1.4.min.js"></script>
<!-- JS fim -->

</head>
<body>
	<div style="text-align: center;">
		<h1>Alterar PJ - ${pessoaJuridica.PESSOA_JURIDICA_ID}</h1>
	</div>
	<br />
	<form:form action="adicionaPessoaJuridica" method="POST"
		modelAttribute="pessoaJuridica">

		<div>
			<label for="razao social">Razão Social: </label><input type="text"
				name="RAZAO_SOCIAL" id="razao social" autofocus="autofocus"
				placeholder="Digite aqui a sua Razão Social"
				value="${pessoaJuridica.RAZAO_SOCIAL}" />
		</div>
		<br />

		<div>
			<label for="nome fantasia">Nome Fantasia: </label><input type="text"
				name="NOME_FANTASIA" id="nome fantasia" autofocus="autofocus"
				placeholder="Digite aqui o seu Nome Fantasia"
				value="${pessoaJuridica.NOME_FANTASIA}" />
		</div>
		<br />

		<div>
			<label for="CEP">CEP:</label> <input name="CEP" type="text" id="CEP"
				size="10" maxlength="9" value="${pessoaJuridica.CEP}"
				onblur="pesquisacep(this.value);" />
		</div>
		<br />

		<div>
			<label for="rua">Rua: </label><input name="RUA" type="text" id="RUA"
				size="60" value="${pessoaJuridica.RUA}" />
		</div>
		<br />

		<div>
			<label for="bairro">Bairro: </label><input name="BAIRRO" type="text"
				id="BAIRRO" size="40" value="${pessoaJuridica.BAIRRO}" />
		</div>
		<br />

		<div>
			<label for="CIDADE">Cidade: </label><input name="CIDADE" type="text"
				id="CIDADE" size="40" value="${pessoaJuridica.CIDADE}" />
		</div>
		<br />

		<div>
			<label for="ESTADO">Estado: </label><input name="ESTADO" type="text"
				id="ESTADO" size="2" value="${pessoaJuridica.ESTADO}" />
		</div>
		<br />

		<div>
			<label for="PAIS">PAIS: </label><input name="PAIS" type="text"
				id="PAIS" value="${pessoaJuridica.PAIS}">
		</div>
		<br />

		<div>
			<label for="telefone">Telefone: </label><input type="text"
				name="TELEFONE" placeholder="Digite aqui seu Telefone"
				value="${pessoaJuridica.TELEFONE}" />
		</div>
		<br />

		<div>
			<label for="cnpj">CNPJ: </label><input type="text" name="CNPJ"
				placeholder="Digite aqui o seu CNPJ" value="${pessoaJuridica.CNPJ}" />
		</div>
		<br />

		<div>
			<label for="inscriçao estadual">Inscrição Estadual: </label><input
				type="text" name="INSCRICAO_ESTADUAL"
				placeholder="Digite aqui a sua Inscrição Estadual"
				value="${pessoaJuridica.INSCRICAO_ESTADUAL}" />
		</div>
		<br />

		<div>
			<label for="inscriçao municipal">Inscrição Municipal: </label><input
				type="text" name="INSCRICAO_MUNICIPAL"
				placeholder="Digite aqui a sua Inscrição Municipal"
				value="${pessoaJuridica.INSCRICAO_MUNICIPAL}" />
		</div>
		<br />

		<div>
			<label for="email">E-mail: </label><input type="email" name="EMAIL"
				placeholder="email@email.com" value="${pessoaJuridica.EMAIL}" />
		</div>
		<br />

		<div>
			<label for="data de construção">Data de Construção: </label> <input
				type="text" name="DATA_DE_CONSTITUICAO" id="DATA_DE_CONSTITUICAO"
				value="<fmt:formatDate value="${pessoaJuridica.DATA_DE_CONSTITUICAO}" pattern="dd/MM/yyyy HH:mm:ss"/>" /><br />
		</div>

		<br />

		<div>
			<label for="atividades desenvolvidas">Atividade(s)Desenvolvida(s):
			</label> <input type="text" name="ATIVIDADES_DESENVOLVIDAS"
				placeholder="Digite a(s) Atividade(s) Desenvolvida(s)"
				value="${pessoaJuridica.ATIVIDADES_DESENVOLVIDAS}" />
		</div>
		<br />

		<div>
			<label for="genero de atividades">Genero de Atividade: </label><input
				type="text" name="GENERO_DA_ATIVIDADES"
				placeholder="Digite o Genero de Atividade"
				value="${pessoaJuridica.GENERO_DA_ATIVIDADES}" />
		</div>
		<br />

		<div>
			<label for="especie da atividade">Especie da atividade: </label><input
				type="text" name="ESPECE_DA_ATIVIDADE"
				placeholder="Digite a Especie de Atividade"
				value="${pessoaJuridica.ESPECE_DA_ATIVIDADE}" />
		</div>
		<br />

		<div>
			<label for="representante legal nome">Representante
				Legal,Nome: </label><input type="text" name="REPRESENTANTE_LEGAL_NOME"
				placeholder="Digite o nome do Representante Legal"
				value="${pessoaJuridica.REPRESENTANTE_LEGAL_NOME}" />
		</div>
		<br />

		<div>
			<label for="cpf representante legal nome">Representante
				Legal,CPF: </label> <input type="text" name="CPF_REPRESENTANTE_LEGAL"
				placeholder="Digite o CPF do Representante Legal"
				value="${pessoaJuridica.CPF_REPRESENTANTE_LEGAL}" />
		</div>
		<br />

		<div>
			<label for="telefone representante legal nome">Representante
				Legal,Telefone: </label><input type="text"
				name="TELEFONE_REPRESENTANTE_LEGAL"
				placeholder="Digite o CPF do Representante Legal"
				value="${pessoaJuridica.TELEFONE_REPRESENTANTE_LEGAL}" />
		</div>
		<br />

		<div class="button" align="center">
			<input type="submit" value="Alterar" />
			<form:hidden path="PESSOA_JURIDICA_ID" />
		</div>

	</form:form>
</body>
</html>