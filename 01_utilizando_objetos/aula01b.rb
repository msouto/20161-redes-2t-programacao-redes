puts 'Palavra a ser comparada'
p = gets.chomp
p2 = p.reverse
if p == p2 then
	puts "Palindromo detectado"
else
	puts "Não é palindromo"
end