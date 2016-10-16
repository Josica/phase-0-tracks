def fake_name(real_name)
	real_full_name = real_name.split(" ")
	real_first_name = real_full_name[0].downcase 
	real_last_name = real_full_name[1].downcase
	alphabet = ["a","b", "c", "d", "e","f", "g", "h","i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
	i = 0
	fake_first_name = ""
	fake_last_name = ""
	length_first = real_first_name.length
	length_last = real_last_name.length 

	while i < length_first
		if real_first_name[i] == "z"
			fake_first_name += "a"
		elsif real_first_name[i] == "a" || real_first_name[i] =="e" || 
			  real_first_name[i] == "i" || real_first_name[i] == "o" || 
			  real_first_name[i] == "u"
			fake_first_name += real_first_name[i] 
		elsif 
			ind = alphabet.index(real_first_name[i])
			fake_first_name += alphabet[ind+1]
		end 
		i+=1
		#fake_first_name[0] = fake_first_name[0].upcase
	end 
	fake_first_name
end 

first = fake_name("Felicia Torres")

puts first 

def make_vowel_change(first)
	new_first = first.split("") 
	i = 0
	fake_firstname = ""
	lengthfirst = first.length
	while i < lengthfirst
	if new_first[i] == "a"
		fake_firstname += "e"
	elsif new_first[i] == "e"
		fake_firstname += "i"
	elsif new_first[i] == "i"
		fake_firstname += "o"
	elsif new_first[i] == "o"
		fake_firstname += "u"
	elsif new_first[i] == "u"
		fake_firstname == "a"
	elsif (new_first[i] != "a" || new_first[i] !="e" || new_first[i] != "i" || new_first[i] != "o" || new_first[i] != "u")
		fake_firstname += new_first[i]
	end
	i+=1 
	end 
	fake_firstname
end 

puts make_vowel_change("Gemidia")




#Psuedocode
#Create a method (fake_name) with a string in the parameter (real_name) that 
# intakes a name of a spy 
# first we should split the name of the spy into two different variables
# one for first name one for last name 
# then using a while loop get the output of the fake first & last name by moving 
#each letter to the next consanant or vowel 
