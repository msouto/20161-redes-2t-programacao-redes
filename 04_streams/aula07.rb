#Verificando se o arquivo tem cabeçalho
# de arquivo .PNG
filename = "ifrn.jpg"

data = []
file = File.open(filename, "r")
begin 
	#cabeçalho de um arquivo png
	header = [137, 80, 78, 71, 13, 10, 26, 10]
	ok = true
	for i in 0..7 do
		byte = file.read(1).unpack("C")[0]		
		if header[i] != byte
		ok = false
		break
	end
end
ensure
	file.close
end
if ok
	puts "#{filename} é um arquivo PNG"
elsif 
	puts "#{filename} NÃO É UM ARQUIVO PNG"
end




