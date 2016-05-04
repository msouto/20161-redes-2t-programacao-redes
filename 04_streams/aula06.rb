nome_arquivo = "ifrn.png"

#leitura do arquivo original
f1 = File.new(nome_arquivo, "r")
bytes = ""
while b = f1.read(1)
	bytes = bytes + b
end
f1.close

#gravar no novo arquivo copiado
f2 = File.new("copia_#{nome_arquivo}", "w")
f2.syswrite(bytes)
f2.close
