#Release 0: Explore Blocks
#write your own method that takes a block. 
#Your method should print out a status message before and after running the block. 
#Your block doesn't have to do anything fancy.
def block_example 

	puts"Hi!"

	yield ("Bob")

end

block_example{ |name| puts "Hello there #{name}" }
puts "\n"

#Release 1: Use each, map, and map!
#Declare an array and a hash, and populate each of them with some data.
#Demonstrate that you can iterate through each one using .each, and then using .map! 

cookies = ["chocolate chip", "oatmeal raisin", "sugar"]

cookies.each {|cookie| puts "I like #{cookie}!" }

puts "\n"

cookies.map! do |cookie| 
	puts cookie
	cookie.upcase! 
end

puts "\n"

p cookies

puts "\n"

bakery_items = { 
	pastry: "croissant",
	breads: "bagels",
	desserts: "cupcake"
}

bakery_items.each {|item,type| puts "I like #{item} and more specifically #{type}!"}

puts "\n"

#Release 2: Use the Documentation
#Use the documentation to find other Array and Hash methods that take blocks
#and that can accomplish the tasks below
#one for the array, and one for the hash
# - A method that iterates through the items, deleting any that meet a certain condition 
# - A method that filters a data structure for only items that do satisfy a certain condition
# - A different method that filters a data structure for only items satisfying a certain condition
# - A method that will remove items from a data structure until the condition 
#   in the block evaluates to false, then stops

#Arrays 

numbers = [1, 2, 4, 5, 6]
puts "Original Array :" 
puts "#{numbers}"
puts "\n"

numbers.delete_if {|number| number < 4 }
puts "Delete if number is less than 4 : "
puts "#{numbers}"
puts "\n"

numbers = [1, 2, 4, 5, 6]
numbers.keep_if {|number| number < 4}
puts "Keep if number is less than 4 : "
puts "#{numbers}"
puts "\n"

numbers = [1, 2, 4, 5, 6]
numbers.reject! { |number| number < 4 }
puts "Reject(delete) if number is less than 4 : "
puts "#{numbers}"
puts "\n"

numbers = [1, 2, 4, 5, 6]
numbers.select! { |number| number.odd? }
puts "Select numbers that are odd: "
puts "#{numbers}"
puts "\n"
puts "\n"

#Hashes
state_capitals = { 
   California: "Sacramento",
   New_York: "Albany",
   Texas: "Austin",
   Arizona: "Phoenix"
}
puts "Original Hash :"
puts "#{state_capitals}"
puts "\n"
state_capitals.delete_if { |state, city| state.length < 6}
puts "Delete if state is less than six letters long "
puts "#{state_capitals}"
puts "\n"

state_capitals = { 
   California: "Sacramento",
   New_York: "Albany",
   Texas: "Austin",
   Arizona: "Phoenix"
}

state_capitals.keep_if { |state, city| state.length < 6}
puts "Keep if state is less than six letters long "
puts "#{state_capitals}"
puts "\n"
state_capitals = { 
   California: "Sacramento",
   New_York: "Albany",
   Texas: "Austin",
   Arizona: "Phoenix"
}

state_capitals.reject! { |state, city| city.length == 6}
puts "Reject (delete) if city is exactly six letters long "
puts "#{state_capitals}"
puts "\n"
state_capitals = { 
   California: "Sacramento",
   New_York: "Albany",
   Texas: "Austin",
   Arizona: "Phoenix"
}

state_capitals.select! { |state, city| city.include? "A" }
puts "Select state if city includes a capital A "
puts "#{state_capitals}"
puts "\n"

