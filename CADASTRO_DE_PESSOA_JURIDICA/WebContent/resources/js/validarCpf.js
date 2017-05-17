function limpa_formulário_CEP() {
	// Limpa valores do formulário de cep.
	document.getElementById('BAIRRO').value = ("");
	document.getElementById('CIDADE').value = ("");
	document.getElementById('ESTADO').value = ("");
}

function meu_callback(conteudo) {
	if (!("erro" in conteudo)) {
		// Atualiza os campos com os valores.
		document.getElementById('BAIRRO').value = (conteudo.BAIRRO);
		document.getElementById('CIDADE').value = (conteudo.CIDADE);
		document.getElementById('ESTADO').value = (conteudo.ESTADO);
	} // end if.
	else {
		// CEP não Encontrado.
		limpa_formulário_CEP();
		alert("CEP não encontrado.");
	}
}

function pesquisaCEP(valor) {

	// Nova variável "CEP" somente com dígitos.
	var CEP = valor.replace(/\D/g, '');

	// Verifica se campo cep possui valor informado.
	if (CEP != "") {

		// Expressão regular para validar o CEP.
		var validaCEP = /^[0-9]{8}$/;

		// Valida o formato do CEP.
		if (validaCEP.test(CEP)) {

			// Preenche os campos com "..." enquanto consulta webservice.
			document.getElementById('BAIRRO').value = "...";
			document.getElementById('CIDADE').value = "...";
			document.getElementById('ESTADO').value = "...";

			// Cria um elemento javascript.
			var script = document.createElement('script');

			// Sincroniza com o callback.
			script.src = '//viacep.com.br/ws/' + CEP
					+ '/json/?callback=meu_callback';

			// Insere script no documento e carrega o conteúdo.
			document.body.appendChild(script);

		} // end if.
		else {
			// CEP é inválido.
			limpa_formulário_CEP();
			alert("Formato de CEP inválido.");
		}
	} // end if.
	else {
		// cep sem valor, limpa formulário.
		limpa_formulário_CEP();
	}
};