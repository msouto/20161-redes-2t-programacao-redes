class Fracao
  attr_accessor :numerador
  attr_reader :denominador

  def denominador=(den)
    if den.to_i != 0
      @denominador = den
    end
  end

  def to_s
	puts @numerador.to_s + '/' + @denominador.to_s
  end

end

#codigo de teste
f = Fracao.new
puts "Alterando os valor da fração para 3/5"
f.numerador = 3
f.denominador = 5
puts f.to_s

puts "Alterando os valor da fração para 8/7"
f.numerador = 8
f.denominador = 7
puts f.to_s