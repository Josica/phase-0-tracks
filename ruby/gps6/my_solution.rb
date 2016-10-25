# Virus Predictor

# I worked on this challenge [by myself, with: Seungjae Yun].
# We spent [1.5] hours on this challenge.

# EXPLANATION OF require_relative
#require_relative uses the name of the ruby file that is in the same folder 
#require will need the absolute path of the file 

require_relative 'state_data'

class VirusPredictor

  #intializing variables when class instance is created
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

#virus_effects is a method that is calling the methods predicted_deaths and speed_of_spread with instance variables as arguments
  def virus_effects
    print "#{@state} will lose #{predicted_deaths} people in this outbreak, and will spread across the state in #{speed_of_spread} months.\n\n"
  end

#if we move the private method above the virus_effects method, we would not be able to call the two private methods (predicted_deaths, and speed_of_spread) from the outside the class.
  private

#the predicted_deaths is a private method that is predicting deaths based on the population density and will 
#return number_of_deaths as a float number and will print this out 
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

  end

#the speed_of_spread is a private method that is defaulting the speed to 0.0 and is 
#calculating speed based on population_density in months and returning the speed as a float and prints this out. 

  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state
  STATE_DATA.each do | state, pop|
  states = VirusPredictor.new(state, STATE_DATA[state][:population_density], STATE_DATA[state][:population])
  states.virus_effects
  end

# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

#=======================================================================
# Reflection Section

# What are the differences between the two different hash syntaxes shown in the state_data file?
# The two different hash syntaxes is different because one uses a string while the other a symbol.

# What does require_relative do? How is it different from require?
# The require_relative method uses the name of the ruby file that is in the same folder to include that file but require would need the entire absolute path.

# What are some ways to iterate through a hash?
# You can iterate through a hash with the .each method. 

# When refactoring virus_effects, what stood out to you about the variables, if anything?
# While refactoring we noticed that there was unneeded instance variables.

# What concept did you most solidify in this challenge?
# I really solidified understanding private class methods and understanding the different scopes.

#=======================================================================