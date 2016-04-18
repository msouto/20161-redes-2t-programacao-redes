t = Time.new(2016,04,18,19,55,30)
#manipular com diretivas de formatação
#de data
#18/04/2016
puts t.strftime('%d/%m/%Y')
#18-04-2016 19:55
puts t.strftime('%d-%m-%Y %H:%M')
#18 de abril de 2016
puts t.strftime('%d de %B de %Y')