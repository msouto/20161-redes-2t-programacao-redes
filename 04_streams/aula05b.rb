IO.foreach("soneto.txt"){ |linha|
	puts linha
}

a = IO.readlines("soneto.txt")
puts a.size