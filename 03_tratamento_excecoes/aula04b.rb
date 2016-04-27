f=File.new("arquivo.txt")
begin 
	while f.eof? == false do
		v = f.gets.chomp.to_i
		puts 10/v
	end
rescue Exception => ex
	puts ex
ensure
	f.close
	puts "=>Arquivo fechado"
end