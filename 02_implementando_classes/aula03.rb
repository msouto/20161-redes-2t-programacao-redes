class Fracao
  attr_accessor :numerador
  attr_reader :denominador
end

#codigo de teste
f = Fracao.new
puts f.numerador.to_s + '/' + f.denominador.to_s
