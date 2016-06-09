require 'socket'
serverSocket = TCPServer.new(2000)

loop {
	t = Thread.start(serverSocket.accept) do |clientSocket| 
		inicio = Time.now
		sock_domain, remote_port, remote_hostname, remote_ip = clientSocket.peeraddr
		puts "Conexão de #{remote_ip} na porta #{remote_port}:"
		puts t
		msgcliente = clientSocket.gets
		#simula uma operação demorada
		#Como E/S disco
		sleep(2)
		clientSocket.puts('ok')
		puts "\n"
		fim = Time.now
		#calcula e imprimir o tempo de execução
		puts "#{fim - inicio} s"
		clientSocket.close
	end
 }