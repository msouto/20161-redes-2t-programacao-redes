require "net/http"

http = Net::HTTP.new("localhost", 4567)

#cadastrar usuário
request = Net::HTTP::PUT.new("/usuario")
request.body = "<?xml?><usuario nome='Ana' />"
response = http.request(request)