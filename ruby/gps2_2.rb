# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
 # separate the string into an array 
 # set default quantity to 1
 # print the list to the console using print method
# output: put list of items to a hash

# Method to add an item to a list
# input: item name and optional quantity
# steps: ask the user if they would like to add an item
# accept user input and set to variable
# ask the user how many of that item they would like to put on the list
# set answer to variable
# push the item and quantity to the hash
# output: updated grocery list

# Method to remove an item from the list
# input: item name
# steps: Ask the user if they would like to remove an item
# add response to variable
# reference variable to the hash for deletion
# Delete the item from the hash
# output: the updated grocery list

# Method to update the quantity of an item
# input: item name and quantity
# steps: ask the user if they would like to update the quantity of anything on the list
# ask for item they would like to update
# set as variable to reference in hash
# ask for new quantity
# push updated quantity to hash
# output: the updated grocery list

# Method to print a list and make it look pretty
# input: grocery list hash
# steps: reference each of the keys and items in the hash
# print them to the screen in a pretty way that is easy to read
# output: the final grocery list hash

#Refactored code to have hash as input 

default_grocery_list = {}


def create_grocery_list (default_grocery_list, grocery_items)
   grocery_arr = grocery_items.split(" ")
   grocery_arr.each do |grocery| 
   default_grocery_list[grocery] = 1
end 
    default_grocery_list
end



def add_item(default_grocery_list,item,quantity)
default_grocery_list[item] = quantity.to_i
default_grocery_list
end



def remove_item(default_grocery_list, item)
   default_grocery_list.delete(item)
   default_grocery_list
end



def update_quantity (default_grocery_list, item, quantity)
   default_grocery_list[item] = quantity.to_i 
   default_grocery_list
end



def print_pretty(default_grocery_list)
    puts"**********Grocery List**********"
    default_grocery_list.each do |item, quantity|
        puts "Grocery Item: #{item} , Quantity: #{quantity}"
    end
end

create_grocery_list(default_grocery_list, "carrots apples cereal pizza")
add_item(default_grocery_list,"Lemonade", 2)
add_item(default_grocery_list,"Tomatoes", 3)
add_item(default_grocery_list,"Onions", 1)
add_item(default_grocery_list,"Ice Cream", 4)
remove_item(default_grocery_list, "Lemonade")
update_quantity(default_grocery_list, "Ice Cream", 1)
puts print_pretty(default_grocery_list)


# Reflection 

# What did you learn about pseudocode from working on this challenge?
# Writing psuedocode helps clearify exactly what we need to code.

# What are the tradeoffs of using arrays and hashes for this challenge?
# We had to keep inputting hashes into method parameters instead of using Classes.

# What does a method return?
# A method returns the last line of code inside the method. 

# What kind of things can you pass into methods as arguments?
# You can pass strings, integers, arrays, hashes, and other methods.

# How can you pass information between methods?
#You can use the same argument named the same and input it and pass it to the method. 

# What concepts were solidified in this challenge, 
# and what concepts are still confusing?
# Hashes were more solidified in this challenge for me, 
# but I still have a few questions left on them. 
