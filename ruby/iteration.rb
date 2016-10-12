def block_example 
	puts"Hi!"
	yield ("Bob")
end

block_example{ |name| puts "Hello there #{name}" }

cookies = ["chocolate chip", "oatmeal raisin", "sugar"]

cookies.each {|cookie| puts "I like #{cookie} !" }

cookies.map! do |cookie| 
	puts cookie
	cookie.upcase! 
end

p cookies

bakery_items = { 
	pastry: "croissant",
	breads: "bagels",
	desserts: "cupcake"
}

bakery_items.each {|item,type| puts "I like #{item} and more specifically #{type}!"}




