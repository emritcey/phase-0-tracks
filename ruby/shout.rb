# module Shout
# 	def self.yell_angrily(words)
# 		words + "!!!" + " :("
# 	end

# 	def self.yelling_happily(words)
# 		words + "!!!" + " :)"
# 	end
	
# 	p self.yell_angrily("I hate you")
# 	p self.yelling_happily("Oh my gosh")
# end

# ===========================================

module Shout 
	def yell(who, words)
		puts "#{who.capitalize} is yelling #{words}!!!"
	end
end

class Crowd
	include Shout
end

class Kid
	include Shout
end

crowd = Crowd.new
crowd.yell("crowd", "ONE MORE SONG")

kid = Kid.new
kid.yell("kid", "HELLO")