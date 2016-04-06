class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end
  
  def speak(number)
    number.times {puts "Woof!"}
  end
  
  def roll_over
    puts "*Rolls over*"
  end 
  
  def dog_years(human_yr)
    new_year = human_yr * 7
    puts "#{human_yr} humans years is #{new_year} in dog years!"
  end 
  
  def shake(paw)
    if paw == "right"
      puts "*Shakes right paw*"
    elsif paw == "left"
      puts "*Shakes left paw*"
    else 
      puts "That wasn't a paw!"
    end
  end 
end

rufus = Puppy.new
rufus.fetch("ball") 
rufus.speak(5)
rufus.roll_over
rufus.dog_years(7)
rufus.shake("left")
rufus.shake(7)

# ----------------------------
# Define Dancer Class 

# Def Initialize 

# Instance 1: 

# Instance 2: 

# Loop 50 times. 

# Store loop information into a data structure. Array 

# Iterate over data structure with .each to call method on each instance. 

class Dancer
  def initialize
    puts "Initializing dancer... "
  end
  
  def spin(number)
    number.times { puts "Look at me spin!" }
  end
  
  def prop(item)
    puts "I am dancing with a #{item}!"
  end
end

index = 0 
dancers = {}

while index < 50
  puts "What is the dancer's name?"
  name = gets.chomp
  input = name 
  name = Dancer.new
  dancers[input] = name
  index += 1 
end

dancers.each do |input, name|
  puts " "
  puts "#{input} says: "
  name.spin(2)
  name.prop("baton")
end 