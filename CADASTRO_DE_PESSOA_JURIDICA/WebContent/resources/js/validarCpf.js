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