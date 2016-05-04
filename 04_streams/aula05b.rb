IO.foreach("soneto.txt"){ |linha|
	puts linha
}

a = IO.readlines("soneto.txt")
puts a.size
puts a[0]
puts a[16]