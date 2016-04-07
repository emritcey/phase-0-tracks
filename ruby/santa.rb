class Santa 
	attr_reader :gender, :ethnicity 
	# attr_accessor :gender
	
	def initialize(gender, ethnicity)
		@gender = gender
		@ethnicity = ethnicity 
		@age = (0..140).to_a
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		#puts "Initializing Santa instance ..."
	end

	def speak
		"Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		"That was a good #{cookie} cookie!"
	end
	
	def celebrate_birthday
	
		new_age = @age.sample + 1 
	end 
	
	def get_mad_at(reindeer)
		@reindeer_ranking.delete(reindeer)
		@reindeer_ranking.push(reindeer)
		puts "Mad at: #{reindeer}!"
	end
end 


# -----------------------------------
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
genders = (0...example_genders.length).to_a

example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A", "Filipino", "Norweigen"]
ethnicities = (0...example_ethnicities.length).to_a

example_cookies = ["snickerdoodle", "chocolate chip", "sugar", "lemon", "frosted"]
cookies = (0...example_cookies.length).to_a

reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
rr = (0...reindeer_ranking.length).to_a
# -----------------------------------

santas = []
10.times do
  santas << Santa.new(example_genders[genders.sample], example_ethnicities[ethnicities.sample])
end


santas.each do |name|
	puts "Santa says: #{name.speak}. #{name.eat_milk_and_cookies(example_cookies[cookies.sample])} "
	puts  "Age: #{name.celebrate_birthday}. Gender: #{name.gender}. Ethnicity: #{name.ethnicity}."
		name.get_mad_at(reindeer_ranking[rr.sample])
	puts "----------------------------------- "
end