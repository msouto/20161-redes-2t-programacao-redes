require 'socket'

socket = UDPSocket.new
socket.connect('localhost', 2000)
puts "A enviar: "
msg = gets
socket.puts msg

puts socket.gets
socket.close
