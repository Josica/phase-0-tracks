puts "Welcome to Our Hamster Sanctuary"
puts "What is your hamster's name?"
name = gets.chomp
puts "What is your hamster's volume level from 1 - 10?"
volume = gets.chomp
volume = volume.to_i
puts "What is your hamster's fur color?"
fur = gets.chomp
puts "Is your hamster a good candidate for adoption? (\"Y\" for Yes| \"N\" for No)"
adopt = gets.chomp
if adopt == "N"
	adopt = false
elsif adopt == "Y"
	adopt = true 
end
puts "What is the age of your hamster?"
age = gets.chomp 
if age == "" 
	age = nil 
elsif age !=""
	age = age.to_i
end 



