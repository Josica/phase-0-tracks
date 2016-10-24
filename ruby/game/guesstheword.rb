class GuessTheWordGame 

	attr_accessor :the_word , :the_guess

	def initialize(the_word, the_guess) 
		@the_word = the_word.downcase.chars
		@the_guess = the_guess.downcase.chars
		@guess_count = 0
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

	def max 
		max_guess_count = @the_word.length.to_i
	end 
end 