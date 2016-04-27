v = [1,0,'x']
v.each do |i|
	begin
		puts 3/i
	rescue ZeroDivisionError
		puts "Divisão por zero"
	rescue Exception => ex
		puts ex 
	end
end