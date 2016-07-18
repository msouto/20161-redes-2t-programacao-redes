require "net/http"

http = Net::HTTP.new("localhost", 2000)

#cadastrar usuário
request = Net::HTTP::Put.new("/usuario")
request.body = "<?xml?><usuario nome='Moises' />"
response = http.request(request)