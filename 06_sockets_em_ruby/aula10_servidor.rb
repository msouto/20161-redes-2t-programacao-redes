require 'socket'

socket = UDPSocket.new
socket.bind("", 2000)

loop{
	data, sender = socket.recvfrom(1024)
	s_ip = sender[3]
	s_port = sender[1]

	puts "Dados recebidos do cliente #{s_ip}:#{s_port}: #{data}"
	socket.send(data.upcase, 0, s_ip, s_port)
}
socket.close