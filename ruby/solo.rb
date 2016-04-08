class Car
	attr_reader :make, :year
	attr_accessor :milage

	def initialize(make, year)
		@make = make
		@year = year
		@milage = 0
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

new_cars = 

puts "How many cars would you like to create?"
	number = gets.chomp.to_i

number.times do 
	new_cars << Car.new("audi", 2016)

	puts "What make of car?"
	make = gets.chomp.downcase
	new_cars[:brand] = make

	puts "What year is the car?"
	year = gets.chomp.to_i
	new_cars[:car_year] = year

end

p new_cars
