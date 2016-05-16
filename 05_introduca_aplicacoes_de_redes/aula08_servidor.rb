require 'socket'

#abre socket servidor TCP na porta 2000
serverSocket = TCPServer.new(2000)
puts 'Servidor iniciado!'

#Aguarda e aceitar a requisição do cliente
clientSocket = serverSocket.accept
puts 'Aceitando conexao'

#lê mensagem do cliente
nome = clientSocket.gets.chomp

#Enviar uma reposta para o cliente
clientSocket.puts('Ola' + nome + '!')

#fecho a conexão o cliente
clientSocket.close

#fecha o socket servidor
serverSocket.close