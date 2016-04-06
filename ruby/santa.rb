class Santa 
	def initialize(gender, ethnicity)
		@gender = gender
		@ethnicity = ethnicity 
		@age = 0
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		puts "Initializing Santa instance ..."
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie} cookie!"
	end
	
	def celebrate_birthday
		new_age = @age + 1 
		puts new_age
	end 
	
	def get_mad_at(reindeer)
		@reindeer_ranking.delete(reindeer)
		@reindeer_ranking.push(reindeer)
		puts "New order: #{@reindeer_ranking}"
	end
	
	def gender
		p @gender
	end
	
	def ethnicity
		p @ethnicity
	end
end 

santas = []
santas << Santa.new("female", "white")
santas << Santa.new("male", "black")
santas << Santa.new("female", "Japanese")

santas.each do |name|
	name.speak
	name.eat_milk_and_cookies("Chocolate")
	name.celebrate_birthday
	name.get_mad_at("Rudolph")
	name.gender
	name.ethnicity
	puts " "
end
