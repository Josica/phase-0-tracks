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



def create_grocery_list (grocery_items)
	grocery_arr = grocery_items.split(" ")
	grocery_list = Hash.new 
	grocery_arr.each do |grocery| 
	grocery_list[grocery] = 1
end 
grocery_list
end 

default_grocery_list = create_grocery_list("carrots apples cereal pizza")

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

def print_pretty (default_grocery_list)
	default_grocery_list. each do |item , quantity|
		puts" Grocery Item: #{item} , Quantity: #{quantity}"
	end
end 

the_grocery_list = {}
puts"***************Grocery List***************"

the_grocery_list = create_grocery_list("carrots apples cereal pizza")
the_grocery_list = add_item(default_grocery_list,"Lemonade",2)
the_grocery_list = add_item(default_grocery_list,"Tomatoes",3)
the_grocery_list = add_item(default_grocery_list,"Onions",1)
the_grocery_list = add_item(default_grocery_list,"Ice Cream",4)
the_grocery_list = remove_item(default_grocery_list, "Lemonade")
the_grocery_list = update_quantity(default_grocery_list, "Ice Cream", 1)
puts print_pretty(the_grocery_list)


















