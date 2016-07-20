require 'json'

h = Hash.new
h['nome']='Ana'
h['pontos']=[36,18]
j = JSON.generate(h)
puts j