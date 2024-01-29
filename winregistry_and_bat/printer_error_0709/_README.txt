
*executar os arquivos .bat como Administrador*

HKEY_CURRENT_USER\SOFTWARE\MICROSOFT\WINDOWS NT\CURRENTVERSION\WINDOWS 
- clique com o botão direito e escolha a opção "Permissões...".

 Adicione o usuário "Todos" e deixe todas as Permissões marcadas (Permitir/Allow).
 Adicione o usuário "Convidado" e deixe todas as permissões marcadas. (Permitir/Allow).

 Adicione “todos” em permissões em "Windows NT"

---

WINDOWS 11:

Passo 1>
	Ativar o Recurso LPD Printer Service
	Ativar o Recurso LPR Port Monitor
	
Acessar o Painel de Controle, em baixo do nome Programas escolher a opção 'Desinstalar um Programa'.

	No lado esquerdo, escolher a opção 'Ativar ou desativar recursos do Windows';
	Procurar por 'Serviços de Impressão e Documentos'
	Clicar no + para expandir
	Selecionar Monitor de Porta LPR e Serviço de Impressão LPD e depois clicar em 'OK';
	
Passo 2>
	Win + R ‘'gpedit.msc'	- 'Modelos Administrativos'--> Impressoras;
	Selecione a opção 'Definir configurações de conexão RCP' -- 'configuração de Politicia'.
		Na tela que abre, na opção 'Definir configurações de conexão RPC' marque a opção 'habilitado'.
		Na opçao 'Protocolo a ser usado para conexoes RPC de saida" marque 'RCP sobre pipes nomeados;
		Na opçao 'Use a autenticação para conexões RPC de saida' marque 'Padrão'
		Em seguida, clique em aplicar e ok


Execute "restart_printspool.bat" (reinicia spooler de impressão). No PC que está instalado a impressora e nos outros caso necessário.
