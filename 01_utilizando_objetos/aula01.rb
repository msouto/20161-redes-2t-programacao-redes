frase = 'Goiaba'
puts frase.upcase
puts frase.size
puts frase.downcase
puts frase.empty?

#utilizando o construtor padrão explicitamente
frase = String.new('Banana')
puts frase
puts frase.size

#utilizando o método split
frase = 'Fulano Beltrano Cicrano'
puts frase
puts frase.size
#utilizando o método split, para separ a string por espaços em branco
vetor = frase.split()
puts vetor[0]
puts vetor[0].size
puts vetor[1]
puts vetor[1].size
puts vetor[2]
puts vetor[2].size