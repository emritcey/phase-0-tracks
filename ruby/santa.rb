class Santa 
	def initialize
		puts "Initializing Santa instance ..."
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		puts "THat was a good #{cookie} cookie!"
	end
end 

emma = Santa.new
emma.speak
emma.eat_milk_and_cookies("Chocolate")