class Fracao
  attr_accessor :numerador
  attr_reader :denominador

def initialize(num,den)
	@numerador=num
	self.denominador=den
end

  def denominador=(den)
    if den.to_i != 0
      @denominador = den
    end
  end

  def somar(f)
  		n = @numerador*f.denominador+f.numerador*@denominador
  		d = @denominador*f.denominador
  		return Fracao.new(n,d)
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

puts "Alterando os valor da fração para 8/0"
f2 = Fracao.new(8,0)
puts f2.to_s

#somando duas fracoes e retornando o resultado em um novo objeto
f3=f.somar(f1)
puts f3