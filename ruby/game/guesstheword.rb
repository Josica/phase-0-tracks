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
end 

#Driver Code 

puts"***********************************Welcome to Guess That Word!***********************************"

puts"Player 1 you're up first! Choose a word for Player 2 to guess:"
game = GuessTheWordGame.new("super","nopes")
game.the_word = gets.chomp
game.the_word = game.the_word.downcase.chars
puts"Hola, Player 2! Here's your game board:"
puts "#{game.initial_board}"
puts "\n"
guess_count = 0 
guesses_list = []
state = [] 
blank = "_ "
max_guess_count = game.the_word.length.to_i

max_guess_count.times {state << blank}
		
	while guess_count < max_guess_count
	puts"Guess a letter and at the final guess try to guess the word. [Guess #{guess_count+1} / #{max_guess_count}]"
	the_guess = gets.chomp 
	guess_word = the_guess.chars
	if guess_word == game.the_word
		puts"You guessed the correct word!" 
			break
	elsif game.the_word.include? the_guess 
			guesses_list << the_guess
			i = 0 
			while i < max_guess_count
			if the_guess == game.the_word[i] 
				state[i] = game.the_word[i] 
				puts"The letter is in position #{i+1}."
				puts "#{state}"
			end 
			i+=1 
		end 
			puts "\n"
			puts">>This letter is part of the word"
			puts "\n"
		else 
			puts "\n"
			puts">>Wrong guess!"
			puts "\n"
		end
		guess_count+=1 
	end 
		
if guess_word == game.the_word
	puts"YAAAAS you won the game! Keep slayinn'!"
else
	puts"Wow you are such a loser!"
end 