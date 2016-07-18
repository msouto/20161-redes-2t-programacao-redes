require "rexml/document"
include REXML

file = File.new("campeoes.xml")
doc = Document.new(file)

#listando as tags dos países vencedores de copas
puts "** Tags dos paises vencedores"
doc.elements.each("campeoes/selecao/pais") do |p|
	puts p
end