require "net/http"

#enviar requisição GET ao serviço
response = Net::HTTP.get_response(URI('http://freegeoip.net/json/www.ifrn.edu.br'))

#imprimir o corpo da resposta HTTP
puts response.body