hogwarts = {
	gryffindor: {
		founder: "Godric Gryffindor",
		values: [
			"bravery",
			"daring",
			"chivalry"],
		colors: [
			"scarlet",
			"gold"]
	},
	hufflepuff: {
		founder: "Helga Hufflepuff",
		values: [
			"hard work",
			"loyalty",
			"fair play"],
		colors: [
			"yellow",
			"black"]
	},
	ravenclaw: {
		founder: "Rowena Ravenclaw",
		values: [
			"intelligence",
			"knowledge",
			"wit"],
		colors: [
			"blue",
			"bronze"]
	},
	slytherin: {
		founder: "Salazar Slytherin",
		values: [
			"ambition",
			"cunning",
			"resourcefulness"],
		colors: [
			"emerald green",
			"silver"]
	}
}

puts "The color in the 0th index in the color array in the Slytherin House: "
puts hogwarts[:slytherin][:colors][0]
puts "\n"
puts "The value in the 1st index in the values array in the Ravenclaw House: "
puts hogwarts[:ravenclaw][:values][1]
puts "\n"
puts "The founder of the Hufflepuff House: "
puts hogwarts[:ravenclaw][:founder]
