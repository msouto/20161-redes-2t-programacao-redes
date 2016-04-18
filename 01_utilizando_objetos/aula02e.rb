require 'time'
t = Time.parse('2016-04-18')
puts t
puts Time.parse('18/04/2016')
t2=Time.now
puts t2
t3=t2-t
#como resolver a diferença de tempo ?
#desafio valendo +0,5 ponto
puts t3