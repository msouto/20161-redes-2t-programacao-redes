require 'socket'

hostname = 'localhost'
port = 2000

s = TCPSocket.open(hostname, port)

#Enviar a mensagem ao servidor
s.puts('Moises')

#Lê mensagem enviada pelo servidor
line = s.gets.chomp
puts line

#Fecha a conexão
s.close