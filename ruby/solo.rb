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
		@milage += number
		puts "Drove #{number} miles today. New milage: #{@milage}"
		
	end

	def destination(destin)
		puts "I am driving to #{destin}."
	end
end

# steve = Car.new("audi", 2008)
# puts steve.sound
# puts steve.miles(500)
# puts steve.destination("LA")
# puts "-------------------"
# steve = Car.new("VW", 2016)
# puts steve.sound
# puts steve.miles(0)
# puts steve.destination("Nowhere.")

# ===========================================
puts "How many cars would you like to create?"
number = gets.chomp.to_i

until number == 0 

	puts "#{number} cars left: What make?"
	make = gets.chomp.downcase

	puts "What year?"
	year = gets.chomp.to_i

	puts "What is it's milage?"
	milage = gets.chomp.to_i

	puts "What is your destination?"
	destin = gets.chomp

	number -= 1
end

puts "#{make} #{year} #{milage}"

