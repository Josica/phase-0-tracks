class Santa 

	attr_reader :age , :ethnicity
	attr_accessor :gender

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

# santas = []
# santas << Santa.new("Female", "Moroccan")
# santas << Santa.new("Transfeminine", "Guyanese")
# santas << Santa.new("Male", "Tamil")
# santas << Santa.new("Transsexual Male", "Polynesian")
# santas << Santa.new("Androgynous", "Sri Lankan")
# santas << Santa.new("Gender fluid", "Croatian")
# santas << Santa.new("Bigender", "Zimbabwean")

the_santa = Santa.new("Female", "Moroccan")
puts "The reindeer is #{the_santa.ethnicity} and is #{the_santa.gender}."
the_santa.gender = "Male"
puts "Changed gender to #{the_santa.gender}"







