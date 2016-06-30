require 'net/http'

resposta = Net::HTTP.get_response('portal.ifrn.edu.br', '/')
if resposta.code == '200'
	resposta.header.each_header do |campo,valor|
		puts "#{campo}: #{valor}"
	end
	file = File.new("out.html", "w")
	file.write(resposta.body)
	file.close
else
	puts "Status de resposta diferente de 200: #{resposta.code} "
end