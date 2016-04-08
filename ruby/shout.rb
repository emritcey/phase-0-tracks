module Shout
	def self.yell_angrily(words)
		words + "!!!" + " :("
	end

	def self.yelling_happily(words)
		words + "!!!" + " :)"
	end
	
	p self.yell_angrily("I hate you")
	p self.yelling_happily("Oh my gosh")
end


