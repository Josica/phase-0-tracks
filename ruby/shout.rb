# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   def self.yelling_happily(words)
# 	words + "!!!" + " :D"
#   end 
# end

# puts Shout.yell_angrily("WTH?")
# puts Shout.yelling_happily("SLAYYY")

module Shout
  def yell_angrily(words)
    words + "!!!" + ">:C"
  end

  def yell_happily(words)
	words + "!!!" + " :D"
  end 
end

class Coach 
	include Shout
end 

class Teen
	include Shout 
end 

coach = Coach.new
puts coach.yell_angrily("Run faster")
puts coach.yell_happily("We won")
puts "\n"
teen = Teen.new
puts teen.yell_angrily("It's not a phase mom")
puts teen.yell_happily("Slayyyy Queen")

