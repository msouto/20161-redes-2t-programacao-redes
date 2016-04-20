class Fracao
  attr_accessor :numerador
  attr_reader :denominador

  def denominador=(den)
    if den.to_i != 0
      @denominador = den
    end
  end

end

#codigo de teste
f = Fracao.new
f.numerador = 3
f.denominador = 5
puts f.numerador.to_s + '/' + f.denominador.to_s
