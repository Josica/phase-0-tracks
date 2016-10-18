class Puppy
	
   def initialize
  	puts "Initializing new puppy instance..."
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(number_of_barks)
  	i = 0
  	while i < number_of_barks 
  		puts "woof"
  		i += 1
  	end
  end

  def roll_over
  	puts "roll over"
  end

  def dog_years(human_years)
  	dog_age = human_years *  7
  	puts dog_age
  	return dog_age
  end

  def play_dead
  	puts "play dead"
  end

end

#Driver Code
kody = Puppy.new
kody.fetch("ball")
kody.speak(5)
kody.roll_over
kody.dog_years(6)
kody.play_dead
