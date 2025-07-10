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

<script type="text/javascript" src="resources/jquery/jquery-2.1.4.min.js"></script>

<link type="text/css" rel="stylesheet" href="resources/css/pessoaJuridicaAdicionado.css" />
<link type="text/css" rel="stylesheet" href="resources/css/background.css" />
<link type="text/css" rel="stylesheet" href="resources/css/adicionaPessoaJuridica.css" />

<link rel="icon" type="resources/images/png" href="resources/images/favicon-32x32.png" sizes="32x32" />
<link rel="icon" type="resources/images/png" href="resources/images/favicon-16x16.png" sizes="16x16" />

</head>
<body>
<br />
 <div style="text-align: center">
	<nav>
		<ul>
			<li><a href="index.jsp"><font color=orange>Menu
						inicial</font></a></li>
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
		<h1>Cadastro de Pessoa Juridica</h1>
	</div>
	<form action="adicionaPessoaJuridica" method="Post">
		<br />

		<form:errors path="pessoaJuridica.razaoSocial" cssClass="error" />
		<div>
			<label for="razao social">Razão Social:</label><input type="text"
				name="razaoSocial" required id="razaoSocial" autofocus="autofocus"
				placeholder="Digite aqui a sua Razão Social"
				value="${pessoaJuridica.razaoSocial}" />
		</div>
		<br />

		<form:errors path="pessoaJuridica.nomeFantasia" cssClass="error" />
		<div>
			<label for="nome fantasia">Nome Fantasia:</label><input type="text"
				name="nomeFantasia" required id="nomeFantasia"
				autofocus="autofocus" placeholder="Digite aqui o seu Nome Fantasia"
				value="${pessoaJuridica.nomeFantasia}" />
		</div>
		<br />

		<form:errors path="pessoaJuridica.cep" cssClass="error" />
		<div>
			<label for="cep">CEP:</label><input name="cep" type="text" size="10"
				maxlength="9" value="${pessoaJuridica.cep}" id="cep"
				onblur="buscarCEP(this.value);" onkeyup="formatarCEP(this);"
				placeholder="Digite o CEP (somente números)" maxlength="9" />
		</div>
		<br />

		<form:errors path="pessoaJuridica.rua" cssClass="error" />
		<div>
			<label for="rua">Rua:</label><input name="rua" required type="text"
				id="rua" readonly value="${pessoaJuridica.rua}" size="60" />
		</div>
		<br />

		<form:errors path="pessoaJuridica.bairro" cssClass="error" />
		<div>
			<label for="bairro">Bairro:</label><input name="bairro" required
				type="text" id="bairro" value="${pessoaJuridica.bairro}" size="40" />
		</div>
		<br />

		<form:errors path="pessoaJuridica.cidade" cssClass="error" />
		<div>
			<label for="cidade">Cidade:</label><input name="cidade" required
				type="text" id="cidade" value="${pessoaJuridica.cidade}" size="40" />
		</div>
		<br />

		<form:errors path="pessoaJuridica.estado" cssClass="error" />
		<div>
			<label for="estado">Estado:</label><input name="estado" required
				type="text" id="estado" value="${pessoaJuridica.estado}" size="2" />
		</div>
		<br />

		<form:errors path="pessoaJuridica.pais" cssClass="error" />
		<div>
			<label for="pais">Pais:</label><input name="pais" required
				type="text" id="pais" value="${pessoaJuridica.pais}" size="2" />
		</div>
		<br />

		<form:errors path="pessoaJuridica.telefone" cssClass="error" />
		<div>
			<label for="telefone">Telefone:</label><input type="text"
				name="telefone" required placeholder="Digite o Telefone"
				value="${pessoaJuridica.telefone}" />
		</div>
		<br />

		<form:errors style="text-align: center;" path="pessoaJuridica.cnpj" cssClass="error" />
		<div>
			<label for="cnpj">CNPJ:</label><input type="text" name=cnpj required
				placeholder="Digite o CNPJ" value="${pessoaJuridica.cnpj}" />
		</div>
		<br />

		<form:errors path="pessoaJuridica.inscricaoEstadual" cssClass="error" />
		<div>
			<label for="inscriçao estadual">Inscrição Estadual:</label><input
				type="text" name="inscricaoEstadual" required
				placeholder="Inscrição Estadual"
				value="${pessoaJuridica.inscricaoEstadual}" />
		</div>
		<br />

		<form:errors path="pessoaJuridica.inscricaoMunicipal" cssClass="error" />
		<div>
			<label for="inscriçao municipal">Inscrição Municipal:</label><input
				type="text" name="inscricaoMunicipal" required
				placeholder="Inscrição Municipal"
				value="${pessoaJuridica.inscricaoMunicipal}" />
		</div>
		<br />

		<form:errors path="pessoaJuridica.email" cssClass="error" />
		<div>
			<label for="email">E-mail:</label><input type="email" name="email"
				required placeholder="email@email.com"
				value="${pessoaJuridica.email}" />
		</div>
		<br />

		<form:errors path="pessoaJuridica.atividadesDesenvolvidas"
			cssClass="error" />
		<div>
			<label for="atividades desenvolvidas">Atividade(s)
				Desenvolvida(s):</label><input type="text" name="atividadesDesenvolvidas"
				required placeholder="Atividade(s) Desenvolvida(s)"
				value="${pessoaJuridica.atividadesDesenvolvidas}" />
		</div>
		<br />

		<form:errors path="pessoaJuridica.generoAtividade"
			cssClass="error" />
		<div>
			<label for="genero de atividades">Genero de Atividade:</label><input
				type="text" name="generoAtividade" required
				placeholder="Digite o Genero de Atividade"
				value="${pessoaJuridica.generoAtividade}" />
		</div>
		<br />

		<form:errors path="pessoaJuridica.especieAtividade"
			cssClass="error" />
		<div>
			<label for="especie da atividade">Especie da atividade:</label><input
				type="text" name="especieAtividade" required
				placeholder="Digite a Especie de Atividade"
				value="${pessoaJuridica.especieAtividade}" />
		</div>
		<br />

		<form:errors path="pessoaJuridica.representanteLegalNome"
			cssClass="error" />
		<div>
			<label for="representante legal nome">Representante
				Legal,Nome:</label><input type="text" name="representanteLegalNome"
				required placeholder="Representante legal nome"
				value="${pessoaJuridica.representanteLegalNome}" />
		</div>
		<br />

		<form:errors style="text-align: center;" path="pessoaJuridica.cpfRepresentanteLegal" cssClass="error" />
		<div>
			<label for="cpf representante legal nome">Representante
				Legal,CPF:</label><input type="text" name="cpfRepresentanteLegal"
				required placeholder="Representante legal CPF"
				value="${pessoaJuridica.cpfRepresentanteLegal}" />
		</div>
		<br />
		<form:errors path="pessoaJuridica.telefoneRepresentanteLegal"
			cssClass="error" />
		<div>
			<label for="telefone representante legal nome">Representante
				Legal,Telefone:</label><input type="text"
				name="telefoneRepresentanteLegal" required
				placeholder="Telefone do representante legal"
				value="${pessoaJuridica.telefoneRepresentanteLegal}" />
		</div>
		<br />
		<div class="button">
			<button type="submit">Enviar</button>
		</div>

		<div class="clean">
			<button type="reset">Limpar caixas</button>
		</div>
	</form>
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