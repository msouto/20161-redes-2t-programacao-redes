require 'socket'

serverSocket = TCPServer.new(2000)
puts 'Servidor iniciado'

saldo = 100.0
mutex = Mutex.new

loop{
	Thread.start(serverSocket.accept) do |clientSocket|
		saque = clientSocket.gets.to_f
		mutex.synchronize{
			if saldo >= saque
				sleep(1)
				saldo = saldo - saque
				clientSocket.puts('saque realizado')
			else
				clientSocket.puts('saque negado')
			end
			puts "	saldo: #{saldo}"
		}
	clientSocket.close
	end
}