class Santa 

	attr_accessor :gender , :age , :ethnicity 

	def initialize(gender, ethnicity)
		@gender = gender 
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", 
			"Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
		puts "Initializing Santa instance ..."
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type}!"
	end 

	def celebrate_birthday
		@age = @age +=1 
	end

	def get_mad_at(reindeer)
		@reindeer_ranking.delete_if {|name| name == reindeer}
		@reindeer_ranking << reindeer
	end 
end

def random_gender
	genders = ["Female", "Male", "Bigender", "Gender fluid", "Androgynous",
		"Transsexual Male", "Transsexual Female", "Transgender Male", "Transgender Female"]
	new_gender = genders.sample 
end

def random_ethnicity
	ethnicities = ["Algerian", "Bosnian", "Cuban", "Danish", "Ethiopian",
		"French", "Guyanese", "Haitian", "Indian", "Japanese", "Korean", 
		"Lao", "Mauritian", "Nepali", "Omani", "Pakistani", "Qatari", 
		"Romanian", "Sri Lankan", "Taiwanese", "Ugandan", "Welsh",
		"Yugoslavian", "Zimbabwean"]
	new_ethnicity = ethnicities.sample 
end

# santas = []
# santas << Santa.new("Female", "Moroccan")
# santas << Santa.new("Transfeminine", "Guyanese")
# santas << Santa.new("Male", "Tamil")
# santas << Santa.new("Transsexual Male", "Polynesian")
# santas << Santa.new("Androgynous", "Sri Lankan")
# santas << Santa.new("Gender fluid", "Croatian")
# santas << Santa.new("Bigender", "Zimbabwean")

# the_santa = Santa.new("Female", "Moroccan")
# puts "The reindeer is #{the_santa.ethnicity} and is #{the_santa.gender}."
# the_santa.gender = "Male"
# puts "Changed gender to #{the_santa.gender}"

santas = []

100.times do |santa| 
new_santa = Santa.new(random_gender, random_ethnicity)
new_santa.age = rand(140) 
puts "This new santa is only #{new_santa.age} and is #{new_santa.ethnicity} and #{new_santa.gender}."
puts "\n"
end 

