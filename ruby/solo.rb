class Car
	attr_reader 
	attr_accessor 

	def initialize(make, year)
		@make = make
		@year = year
		@milage = 10000
		puts "Initializing new car..."
	end

	def sound
		puts "vroooooooom!"
	end

	def miles(number)
		puts "Drove #{number} miles today."
	end

	def destination
		puts "I am driving to #{destination}."
	end
end