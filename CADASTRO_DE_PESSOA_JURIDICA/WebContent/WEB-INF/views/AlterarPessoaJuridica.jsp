<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Alteração pessoas juridicas</title>

<!-- Css     -->
<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.9.0/themes/base/jquery-ui.css" />
<link rel="icon" type="resources/images/png"
	href="resources/images/favicon-32x32.png" sizes="32x32" />
<link rel="icon" type="resources/images/png"
	href="resources/images/favicon-16x16.png" sizes="16x16" />

<link type="text/css" rel="stylesheet"
	href="resources/css/alterarPessoaJuridica.css" />
<link type="text/css" rel="stylesheet"
	href="resources/css/pessoaJuridicaAdicionado.css" />
<!-- Css fim -->

<!-- JS -->
<script src="http://code.jquery.com/jquery-1.8.2.js"></script>
<script src="http://code.jquery.com/ui/1.9.0/jquery-ui.js"></script>
<script type="text/javascript" charset="utf-8"
	src="resources/js/dateCalendar.js"></script>
<script type="text/javascript"
	src="resources/jquery/jquery-2.1.4.min.js"></script>
<!-- JS fim -->

</head>
<body>
	<br />
	<div style="text-align: center">
		<nav>
			<ul>
				<li><a href="index.jsp"><font color=orange>Menu
							inicial</font></a></li>
				<li>|</li>
				<li><a href="novaPessoaJuridica"><font color=orange>Cadastrar
							um (a) nova pessoa jurídica </font></a></li>
				<li>|</li>
				<li><a href="listaPessoaJuridica"><font color=orange>Lista
							de pessoas juridicas</font></a></li>
				<li>|</li>
				<li><a href="logout"><font color=orange>Sair</font></a></li>
			</ul>
		</nav>
	</div>
	<br />
	<br />
	<div style="text-align: center;">
		<h1>Alterar pessoa juridica - ${pessoaJuridica.id}</h1>
	</div>
	<br />
	<form:form action="adicionaPessoaJuridica" method="POST"
		modelAttribute="pessoaJuridica">

		<div>
			<label for="razao social">Razão Social:</label><input type="text"
				name="razaoSocial" id="razao social" autofocus="autofocus"
				placeholder="Digite aqui a sua Razão Social"
				value="${pessoaJuridica.razaoSocial}" />
		</div>
		<br />

		<div>
			<label for="nome fantasia">Nome Fantasia:</label><input type="text"
				name="nomeFantasia" id="nome fantasia" autofocus="autofocus"
				placeholder="Digite aqui o seu Nome Fantasia"
				value="${pessoaJuridica.nomeFantasia}" />
		</div>
		<br />

		<div>
			<label for="cep">CEP:</label><input name="cep" type="text" size="10"
				maxlength="9" value="${pessoaJuridica.cep}" id="cep"
				onblur="buscarCEP(this.value);" onkeyup="formatarCEP(this);"
				placeholder="Digite o CEP (somente números)" maxlength="9" />
		</div>
		<br />

		<div>
			<label for="rua">Rua:</label><input name="rua" type="text" id="rua"
				readonly size="60" value="${pessoaJuridica.rua}" />
		</div>
		<br />

		<div>
			<label for="bairro">Bairro:</label><input name="bairro" type="text"
				id="bairro" readonly size="40" value="${pessoaJuridica.bairro}" />
		</div>
		<br />

		<div>
			<label for="cidade">Cidade:</label><input name="cidade" type="text"
				id="cidade" readonly size="40" value="${pessoaJuridica.cidade}" />
		</div>
		<br />

		<div>
			<label for="estado">Estado:</label><input name="estado" type="text"
				id="estado" readonly size="2" value="${pessoaJuridica.estado}" />
		</div>
		<br />

		<div>
			<label for="pais">PAIS:</label><input name="pais" type="text"
				id="pais" readonly value="${pessoaJuridica.pais}">
		</div>
		<br />

		<div>
			<label for="telefone">Telefone:</label><input type="text"
				name="telefone" placeholder="Digite aqui seu Telefone"
				value="${pessoaJuridica.telefone}" />
		</div>
		<br />

		<div>
			<label for="cnpj">CNPJ:</label><input type="text" name="cnpj"
				placeholder="Digite aqui o seu CNPJ" value="${pessoaJuridica.cnpj}" />
		</div>
		<br />

		<div>
			<label for="inscriçao estadual">Inscrição Estadual:</label><input
				type="text" name=inscricaoEstadual
				placeholder="Digite aqui a sua Inscrição Estadual"
				value="${pessoaJuridica.inscricaoEstadual}" />
		</div>
		<br />

		<div>
			<label for="inscriçao municipal">Inscrição Municipal:</label><input
				type="text" name="inscricaoMunicipal"
				placeholder="Digite aqui a sua Inscrição Municipal"
				value="${pessoaJuridica.inscricaoMunicipal}" />
		</div>
		<br />

		<div>
			<label for="email">E-mail:</label><input type="email" name="email"
				placeholder="email@email.com" value="${pessoaJuridica.email}" />
		</div>
		<br />

		<div>
			<label for="data de construção">Data de Construção:</label><input
				type="text" name="DATA_DE_CONSTITUICAO" id="DATA_DE_CONSTITUICAO"
				value="<fmt:formatDate value="${pessoaJuridica.dataConstituicao}" pattern="dd/MM/yyyy HH:mm:ss"/>" /><br />
		</div>

		<br />

		<div>
			<label for="atividades desenvolvidas">Atividade(s)Desenvolvida(s):</label><input
				type="text" name="atividadesDesenvolvidas"
				placeholder="Digite a(s) Atividade(s) Desenvolvida(s)"
				value="${pessoaJuridica.atividadesDesenvolvidas}" />
		</div>
		<br />

		<div>
			<label for="genero de atividades">Genero de Atividade:</label><input
				type="text" name="generoAtividade"
				placeholder="Digite o Genero de Atividade"
				value="${pessoaJuridica.generoAtividade}" />
		</div>
		<br />

		<div>
			<label for="especie da atividade">Especie da atividade:</label><input
				type="text" name="especieAtividade"
				placeholder="Digite a Especie de Atividade"
				value="${pessoaJuridica.especieAtividade}" />
		</div>
		<br />

		<div>
			<label for="representante legal nome">Representante
				Legal,Nome:</label><input type="text" name="representanteLegalNome"
				placeholder="Digite o nome do Representante Legal"
				value="${pessoaJuridica.representanteLegalNome}" />
		</div>
		<br />

		<div>
			<label for="cpf representante legal nome">Representante
				Legal,CPF:</label><input type="text" name="cpfRepresentanteLegal"
				placeholder="Digite o CPF do Representante Legal"
				value="${pessoaJuridica.cpfRepresentanteLegal}" />
		</div>
		<br />

		<div>
			<label for="telefone representante legal nome">Representante
				Legal,Telefone:</label><input type="text" name="telefoneRepresentanteLegal"
				placeholder="Digite o CPF do Representante Legal"
				value="${pessoaJuridica.telefoneRepresentanteLegal}" />
		</div>
		<br />

		<div class="button" align="center">
			<input type="submit" value="Alterar" />
			<form:hidden path="id" />
		</div>

	</form:form>
	<script>
        // Função para limpar os campos do formulário de endereço e o campo CEP
        function limpa_formulario_cep() {
            document.getElementById('cep').value = ""; // Limpa o campo CEP também
            document.getElementById('rua').value = "";
            document.getElementById('bairro').value = "";
            document.getElementById('cidade').value = "";
            document.getElementById('estado').value = "";
            // Opcional: Esconder a caixa de mensagem se estiver visível
            const messageBox = document.getElementById('messageBox');
            if (messageBox) {
                messageBox.style.display = 'none';
            }
        }

        // Função para formatar o CEP enquanto o usuário digita
        function formatarCEP(input) {
            let value = input.value.replace(/\D/g, ''); // Remove tudo que não é dígito
            if (value.length > 5) {
                value = value.substring(0, 5) + '-' + value.substring(5, 8);
            }
            input.value = value;
        }

        // Função para exibir mensagens na tela
        function showMessage(message, type) {
            let messageBox = document.getElementById('messageBox');
            if (!messageBox) {
                messageBox = document.createElement('div');
                messageBox.id = 'messageBox';
                messageBox.className = 'fixed top-4 right-4 p-4 rounded-lg shadow-lg text-white z-50';
                document.body.appendChild(messageBox);
            }

            messageBox.textContent = message;
            messageBox.style.display = 'block';

            if (type === 'error') {
                messageBox.style.backgroundColor = '#ef4444'; /* bg-red-500 */
            } else {
                messageBox.style.backgroundColor = '#22c55e'; /* bg-green-500 */
            }

            setTimeout(() => {
                messageBox.style.display = 'none';
            }, 3000); // Esconde a mensagem após 3 segundos
        }

        // Sua função buscarCEP adaptada para preencher o formulário
        function buscarCEP(valor) {
            // Remove caracteres não numéricos do CEP
            let cep = valor.replace(/\D/g, '');

            // Preenche os campos com "..." enquanto consulta webservice.
            document.getElementById('rua').value = "...";
            document.getElementById('bairro').value = "...";
            document.getElementById('cidade').value = "...";
            document.getElementById('estado').value = "...";

            // Verifica se o CEP tem 8 dígitos
            if (cep.length !== 8) {
                limpa_formulario_cep();
                showMessage('Formato de CEP inválido.', 'error');
                return;
            }

            // Faz a requisição para a API ViaCEP usando fetch
            fetch(`https://viacep.com.br/ws/${cep}/json/`)
                .then(response => {
                    if (!response.ok) {
                        throw new Error('Erro na requisição: ' + response.statusText);
                    }
                    return response.json();
                })
                .then(data => {
                    if (data.erro) {
                        limpa_formulario_cep();
                        showMessage('CEP não encontrado!', 'error');
                    } else {
                        // Preenche os campos do formulário com os dados recebidos
                        document.getElementById('rua').value = data.logradouro;
                        document.getElementById('bairro').value = data.bairro;
                        document.getElementById('cidade').value = data.localidade;
                        document.getElementById('estado').value = data.uf;
                        showMessage('CEP encontrado com sucesso!', 'success');
                    }
                })
                .catch(error => {
                    limpa_formulario_cep();
                    showMessage('Erro ao consultar o CEP. Tente novamente.', 'error');
                    console.error('Erro:', error); // Para depuração no console do navegador
                });
        }

        // Exemplo de uso (opcional, a função é chamada no onblur do input)
        // buscarCEP('88010001');
    </script>
</body>
</html>