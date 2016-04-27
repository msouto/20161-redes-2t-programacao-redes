begin
	#código a ser testado para exceções
	x=0
	y=5/x
rescue Exception => ex
	#código de tratamento caso ocorra a exceção
	y=5
	#exibir a informação do tratamento da exceção
	puts ex
end	
puts y