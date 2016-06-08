require 'socket'

serverSocket = TCPServer.new(2000)

loop {
	Thread.start(serverSocket.accept) do |clientSocket| 
		msgcliente = clientSocket.gets
		#simula uma operação demorada
		#Como E/S disco
		sleep(2)
		clientSocket.puts('ok')
		clientSocket.close
	end
 }