# Psuedocode:

# Create a GuessTheWordGame class that will have 
# a method to initialize instance variables
# a method to check if user's guess is letter
# a method to check if user's guess is word
# a method to show current state of the guess
# a method to have the fixed count based on the word user inputs 
# a method that will allow user to guess based on the fixed count of guesses 

class GuessTheWordGame 

	attr_accessor :the_word , :the_guess

	def initialize(the_word, the_guess) 
		@the_word = the_word.downcase.chars
		@the_guess = the_guess.downcase.chars
		@guess_count = 0
		@is_over = false 
	end 

	def initial_board 
		word_board = @the_word
		display = ""
		len = word_board.length 
		len.times do |word_board|
		display += "_ "
		end
		return display
	end
end 