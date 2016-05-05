puts 'A'.unpack("b*")
puts 'A'.unpack("B*")
puts 'aa'.unpack("b8B8")

puts [10000010].pack('C')
#Saída esperada => "A"

puts ['A'].pack('H')
#Saída esperada => "\xA0"