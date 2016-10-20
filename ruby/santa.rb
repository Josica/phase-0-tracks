class Santa 

	def initialize(gender,ethnicity)
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

end

santas = []
santas << Santa.new("Female", "Moroccan")
santas << Santa.new("Transfeminine", "Guyanese")
santas << Santa.new("Male", "Tamil")
santas << Santa.new("Transsexual Male", "Polynesian")
santas << Santa.new("Androgynous", "Sri Lankan")
santas << Santa.new("Gender fluid", "Croatian")
santas << Santa.new("Bigender", "Zimbabwean")

