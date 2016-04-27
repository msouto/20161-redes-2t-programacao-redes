begin
	#código a ser testado para exceções
	x=0
	y=5/x
rescue Exception
	#código de tratamento caso ocorra a exceção
	y=5
end	
puts y