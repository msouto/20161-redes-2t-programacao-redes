require 'socket'

serverSocket = TCPServer.new(2000)
clientSocket = serverSocket.accept

begin

loop {
	t = Thread.start(serverSocket.accept) do |clientSocket| 
		inicio = Time.now
		sock_domain, remote_port, remote_hostname, remote_ip = clientSocket.peeraddr
		puts "Conexão de #{remote_ip} na porta #{remote_port}:"
		
		nome_arquivo = clientSocket.gets.chomp
		tamanho_arquivo = clientSocket.gets.chomp.to_i
		bytes_arquivo = clientSocket.read(tamanho_arquivo)	
		arquivo = File.new("copia #{nome_arquivo}", "wb")
		arquivo.syswrite(bytes_arquivo)

		fim = Time.now
		#calcula e imprimir o tempo de execução
		puts "#{fim - inicio} s"
		clientSocket.close
	end
 }
ensure
	serverSocket.close
	arquivo.close
end