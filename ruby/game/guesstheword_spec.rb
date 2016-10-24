require_relative 'guesstheword' 

describe GuessTheWordGame do 

	it "will return nine spaces " do 
		game = GuessTheWordGame.new("superhero","spaghetti")
		expect(game.initial_board) .to eq ("_ _ _ _ _ _ _ _ _ ")
	end

end 