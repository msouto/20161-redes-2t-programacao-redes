require "rexml/document"
include REXML

file = File.new("campeoes.xml")
doc = Document.new(file)

#listando as tags dos países vencedores de copas
puts "** Tags dos paises vencedores"
doc.elements.each("campeoes/selecao/pais") do |p|
	puts p
end

#listando os nomes dos países vencedores de copas
puts "** Nomes dos paises vencedores"
doc.elements.each("campeoes/selecao/pais") do |p|
	puts p.text
end

#listando as copas realizadas
puts "** Copas realizadas"
doc.elements.each("campeoes/selecao/copas_do_mundo/copa") do |c|
	puts "#{c.attributes['ano']} - #{c.attributes['local']}"
end

#listando os paises europeus vencedores de copas
puts "** Paises europeus vencedores de copas"
doc.elements.each("campeoes/selecao[continente='Europa']/pais") do |p|
	puts p.text
end

#listando os anos das copas deste século
puts "** Anos das copas do século 21"
doc.elements.each("campeoes/selecao/copas_do_mundo/copa[@ano>=2000]") do |p|
	puts p.attributes['ano']
end

















