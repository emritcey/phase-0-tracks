# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# require allows you to load a file from any given directory,
# whereas require_relative references files located relative to the file
# you put the statement in


class VirusPredictor

  # setting up attributes and variables
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # returning values of future methods
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

  # calculating amount of deaths based on the population density
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
  # determining the rate that the virus will spread based on population density
  
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


STATE_DATA.each do |place, populationinfo|
  states = VirusPredictor.new(place, populationinfo[:population_density], populationinfo[:population])
  states.virus_effects
end 



#=======================================================================
# Reflection Section

# What are the differences between the two different hash syntaxes shown in the state_data file?
# STAT_DATA is a nested hash, so the value portion of the hash is a hash itself. 

# What does require_relative do? How is it different from require?
#  require relative links a document that is inside of the same file as the file it is written in
# require is broader and can be used for other directories. 

# What are some ways to iterate through a hash?
# We used .each to go through the hash and hit each key value pair. IT can also be done by entering the individual information.

# When refactoring virus_effects, what stood out to you about the variables, if anything?
#  It was definitely interesting that the variables could just be removed since each of hte methods was using instance variables.
# I wouldn't have thought of this on my own, since it made sense to have them as well. 

# What concept did you most solidify in this challenge?
#  I definitely understand instance variables a little bit better.

