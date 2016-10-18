# class Puppy

#    def initialize
#   	puts "Initializing new puppy instance..."
#   end

#   def fetch(toy)
#     puts "I brought back the #{toy}!"
#     toy
#   end

#   def speak(number_of_barks)
#   	i = 0
#   	while i < number_of_barks 
#   		puts "woof"
#   		i += 1
#   	end
#   end

#   def roll_over
#   	puts "roll over"
#   end

#   def dog_years(human_years)
#   	dog_age = human_years *  7
#   	puts dog_age
#   	return dog_age
#   end

#   def play_dead
#   	puts "play dead"
#   end

# end

# #Driver Code
# kody = Puppy.new
# kody.fetch("ball")
# kody.speak(5)
# kody.roll_over
# kody.dog_years(6)
# kody.play_dead

class Dancer 

def initialize 
	puts "Initializing new dancer instance.."
end 

def jump 
	puts "Jumping..."
end

def twirl 
	puts "Twirling..."
end

end 

dance_team = []
until dance_team.length >= 50
	dancer = Dancer.new
	dance_team.push dancer
end 	

dance_team.each do |x| 
	x.jump 
	x.twirl
end 

