#Psuedocode
#Create a hash with keys for client information
#Ask for user input and store data in appropriate data type in hash
#Allow user to see and review recieved information clearly
#Allow user to edit data or if all data is correct show them 
#final information collected
#After editing data user will see final information collected

puts"Client Information for Daisy's Designs"

client_info = {
	first_name: "John",
	last_name: "Doe",
	age: 25,
	number_of_children: 0,
	decor_theme: "Elephant",
	wallpaper_design: "Yellow",
	ombre_liking: "true"
}

puts"First Name:"
client_info[:first_name] = gets.chomp

puts"Last Name:"
client_info[:last_name] = gets.chomp

puts"Age:"
client_info[:age] = gets.chomp.to_i

puts"Number of Children:"
client_info[:number_of_children] = gets.chomp.to_i

puts"Theme of Decor:"
client_info[:decor_theme] = gets.chomp

puts"Wallpaper Design:"
client_info[:wallpaper_design] = gets.chomp

puts"Ombre Likeness:"
client_info[:ombre_liking] = gets.chomp

puts "\n"

puts">>Please Review Your Information Recieved for Daisy's Designs<<"
puts"[1] First Name: #{client_info[:first_name]}"
puts"[2] Last Name: #{client_info[:last_name]}"
puts"[3] Age: #{client_info[:age]}"
puts"[4] Number of Children: #{client_info[:number_of_children]}"
puts"[5] Theme of Decor: #{client_info[:decor_theme]}"
puts"[6] Wallpaper Design: #{client_info[:wallpaper_design]}"
puts"[7] Ombre Likeness: #{client_info[:ombre_liking]}"

puts "\n"

puts"If all information is correct. please type \"correct\" or 
please enter the corresponding number of the section you 
would like to edit:"

sumbit = gets.chomp 

if sumbit == "correct"
	puts"\n"
elsif sumbit == "1"
	puts"First Name:"
	client_info[:first_name] = gets.chomp
elsif sumbit == "2"
	puts"Last Name:"
	client_info[:last_name] = gets.chomp
elsif sumbit == "3"
	puts"Age:"
	client_info[:age] = gets.chomp.to_i
elsif sumbit == "4"
	puts"Number of Children:"
	client_info[:number_of_children] = gets.chomp.to_i
elsif sumbit == "5"
	puts"Theme of Decor:"
	client_info[:decor_theme] = gets.chomp
elsif sumbit == "6"
	puts"Wallpaper Design:"
	client_info[:wallpaper_design] = gets.chomp
elsif sumbit == "7"
	puts"Ombre Likeness:"
	client_info[:ombre_liking] = gets.chomp
else 
	puts"Incorrect Input!"
end 

puts "\n"

puts"Your Information Has Been Submitted for Daisy's Designs"
puts"First Name: #{client_info[:first_name]}"
puts"Last Name: #{client_info[:last_name]}"
puts"Age: #{client_info[:age]}"
puts"Number of Children: #{client_info[:number_of_children]}"
puts"Theme of Decor: #{client_info[:decor_theme]}"
puts"Wallpaper Design: #{client_info[:wallpaper_design]}"
puts"Ombre Likeness: #{client_info[:ombre_liking]}"
