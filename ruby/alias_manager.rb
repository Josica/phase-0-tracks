#The location of vowels method lets us know where vowels 
#are located in the name and lets us know later
#where the original names vowels were so we can 
#keep the vowels the same until we use the make_vowel_change method (which will allows us to move to next vowel)

def location_of_vowels (the_name)
	lengthofname = the_name.length 
	i = 0
	vowels_i=[]
	while i < lengthofname
	if (the_name[i] == "a" || the_name[i] =="e" || 
	the_name[i] == "i" || the_name[i] == "o" || 
	the_name[i] == "u")
	vowels_i << i 
	end 
	i+=1 
end 
vowels_i
end 

#		elsif vowels_i[i] == i
			#fake_first_name += real_first_name[i]



#Create a method with a string in the parameter that 
# intakes a name of a spy 
# first we should split the name of the spy into two different variables
# one for first name one for last name 
# then using a while loop get the output of the fake first & last name by moving 
# each letter to the next letter 


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

#The make vowel change method will allow us to move 
#the vowel to the next vowel from the output of the fake_name above method

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


#Same as previous fake_name method but for the last name 

def fake_name_c2(real_name)
	real_full_name = real_name.split(" ")
	real_first_name = real_full_name[0] 
	real_last_name = real_full_name[1]
	i = 0
	fake_first_name = ""
	fake_last_name = ""
	vowel_index = ""
	length_first = real_first_name.length
	length_last = real_last_name.length 
		while i < length_last
		if real_last_name[i] == "z"
			fake_last_name += "a"
		elsif real_last_name[i] == "a" || real_last_name[i] =="e" || 
			  real_last_name[i] == "i" || real_last_name[i] == "o" || 
			  real_last_name[i] == "u"
			fake_last_name += real_last_name[i] 
		else 
			fake_last_name += real_last_name[i].next 
		end 
		i+=1
	end
	fake_last_name
end

#Same as previous make_vowel_change method but for the last name 

def make_vowel_change_2(last)
	new_last = last.split("") 
	i = 0
	fake_lastname = ""
	lengthlast = last.length
	while i < lengthlast
	if new_last[i] == "a"
		fake_lastname += "e"
	elsif new_last[i] == "e"
		fake_lastname += "i"
	elsif new_last[i] == "i"
		fake_lastname += "o"
	elsif new_last[i] == "o"
		fake_lastname += "u"
	elsif new_last[i] == "u"
		fake_lastname == "a"
	elsif (new_last[i] != "a" || new_last[i] !="e" || new_last[i] != "i" || new_last[i] != "o" || new_last[i] != "u")
		fake_lastname += new_last[i]
	end
	i+=1 
	end 
	fake_lastname
end 

#After getting both first and last names into the correct fake names , swap and join into one string 

