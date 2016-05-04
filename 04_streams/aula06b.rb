nome_arquivo = "ifrn.png"
#leitura do arquivo original
f1 = File.new(nome_arquivo, "r")

qtd_bytes = File::size(nome_arquivo)
bytes = f1.read(qtd_bytes)
f1.close

#gravar no novo arquivo copiado
f2 = File.new("copia_#{nome_arquivo}", "w")
f2.syswrite(bytes)
f2.close
