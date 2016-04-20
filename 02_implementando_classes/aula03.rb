class Fracao
  attr_accessor :numerador
  attr_reader :denominador

def initialize(num,den)
	@numerador=num
	@denominador=den
end

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
puts "Alterando os valor da fração para 3/5"
f = Fracao.new(3,5)
puts f.to_s

puts "Alterando os valor da fração para 8/7"
f1 = Fracao.new(8,7)
puts f1.to_s