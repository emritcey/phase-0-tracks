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