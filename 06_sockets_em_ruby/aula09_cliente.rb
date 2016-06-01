require 'socket'
hostname = 'localhost'
port = 2000

socket = TCPSocket.new(hostname,port)

socket.puts('soma 5 5')
puts socket.gets

socket.puts('raiz_quadrada 25')
puts socket.gets

socket.puts('maluco 5 3')
puts socket.gets
socket.close