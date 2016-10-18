#for encrypt:
# if we enter abc to method we want to return bcd, to do this we have to:
#- take in string
#- check strings length
#- make a while loop where we loop through the string
#- for each letter we use the .next method to display the next letter 
#  in the alphabet
#- make exception for spaces and last letter (z)

#for decrypt:
#We will use the same method as above to determine length and loop 
#through the string
#We will add a alphabet string, and for each letter look for index in 
#alphabet string, and add the next letter in alphabet to returning string
# We will also need exceptions for first letter (a) and spaces

def encrypt(str)
	length = str.length
	i = 0
	newstring = ""
	while i < length
		if str[i]==" "
			newstring += str[i]
		elsif str[i]== "z"
			newstring += "a"
		else
			newstring += str[i].next 
		end
		i+=1
	end
	return newstring
end

def decrypt(str)
	length = str.length
	alphabet = "abcdefghijklmnopqrstuvwxyz"
	i = 0
	newstr = ""
	while i < length
		if str[i]==" "
			newstr += str[i]
		elsif str[i]== "a"
			newstr += "z"
		else
			ind = alphabet.index(str[i])
			newstr += alphabet[ind-1]
		end
		i+=1
	end
	return newstr
end

puts "Hello agent, would you like to decrypt or encrypt your password? (D/E)"
answer = gets.chomp
puts "What is the password?"
password = gets.chomp

if answer == "D"
	puts decrypt(password)
elsif answer == "E"
	puts encrypt(password)
else 
	puts "Input was invalid, you're too bad to use our pro program, you can't be a secret agent!"
end

#Testdata:
#puts encrypt("abc")
#puts encrypt("zed")
#puts decrypt("bcd")
#puts decrypt("afe")
#puts decrypt(encrypt("swordfish")) #This works because it is a nested method, 
# so first it performs the encrypt method, which gives the decrypt method a string 
#to work with, which it reverses and brings back the original string.