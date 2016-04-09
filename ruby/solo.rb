class Car
	attr_reader :make, :year
	attr_accessor :milage, :destination

	def initialize(make, year)
		@make = make
		@year = year
		@milage = 7
		@destination = ""
		puts "Initializing new car..."
	end

	def sound
		puts "vroooooooom!"
	end

	def miles(number)
		@milage += number
	end

	def destination(destin)
		@destination = destin
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

new_car = []

puts "How many cars would you like to create?"
	number = gets.chomp.to_i

number.times do 
	new_car = Car.new("Audi", 2016)
	
	puts "How many miles have you driven?"
	driven = gets.chomp.to_i

	puts "What is your destination?"
	place = gets.chomp
	
	p "#{new_car.sound} This #{new_car.make} #{new_car.year} has a milage of: #{new_car.miles(driven)} and is heading to #{new_car.destination(place)}!"
end




