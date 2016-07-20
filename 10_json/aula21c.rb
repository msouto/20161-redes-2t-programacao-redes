require "net/http"
require "json"

#enviar requisição GET ao serviço
response = Net::HTTP.get_response(URI('http://freegeoip.net/json/www.ifrn.edu.br'))
h = JSON.parse(response.body)
puts h['ip']
puts h['country_name']
