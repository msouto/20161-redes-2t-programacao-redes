require 'json'

str='{"nome":"Ana","pontos":[36, 18]}'
h = JSON.parse(str)
puts h['nome']
puts h['pontos'][1]