module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yelling_happily(words)
	words + "!!!" + " :D"
  end 
end

puts Shout.yell_angrily("WTH?")
puts Shout.yelling_happily("SLAYYY")
