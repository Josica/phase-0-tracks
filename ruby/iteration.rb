def block_example 
	puts"Hi!"
	yield ("Bob")
end

block_example{ |name| puts "Hello there #{name}" }