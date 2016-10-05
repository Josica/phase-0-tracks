puts "Welcome to the Werewolf Resource Hiring Processor"
puts "How many employees will be processed?"
employees = gets.chomp
employees = employees.to_i
i = 0
while i < employees
puts "Welcome to the Werewolf Inc Interview"
puts "What is your name?"
name = gets.chomp
puts "How old are you?"
age = gets.chomp
age = age.to_i
puts "What year were you born?"
year = gets.chomp
year = year.to_i
if age == (2016 - year)
	correct_age = true
else 
	correct_age = false 
end 
puts "Our company cafeteria serves garlic bread."
puts "Should we order some for you? (\"Y\" for Yes| \"N\" for No)"
garlic_bread = gets.chomp
if garlic_bread == "N"
	garlic_bread = false
elsif garlic_bread == "Y"
	garlic_bread = true 
end
puts "Would you like to enroll in the company’s health insurance?"
puts "(\"Y\" for Yes| \"N\" for No)"
health_insurance = gets.chomp
if health_insurance == "N"
	health_insurance = false
elsif health_insurance == "Y"
	health_insurance = true 
end

puts "*************************** Vampire Detection Results ******************************"

if name == "Drake Cula" || name == "Tu Fang"
	puts "#{name} - Definitely a vampire."
elsif correct_age == true && (garlic_bread == true || health_insurance == true)
	puts "#{name} - Probably not a vampire."
elsif correct_age == false && (garlic_bread == false || health_insurance == false)
	puts "#{name} - Probably a vampire."
elsif (correct_age == false || garlic_bread == false) && health_insurance == false
	puts "#{name} - Almost certainly a vampire."
else 
	puts "#{name} - Results inconclusive."
end 
puts "************************************************************************************"

i+=1 
end 
