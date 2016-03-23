# Hamsters Name 
puts "What is this Hamsters Name?"
name = gets.chomp
# Volume Level
puts "How Loud is this Hamster? 1-10"
volume = gets.chomp.to_i

# Fur color
puts "What color is it's fur?"
fur_color = gets.chomp
# Whether it is a good canditiate for adoption

puts "is it a good candidate for adoption? (y/n)"
good = gets.chomp

until (good=="y" || good=="n")
	puts "is it a good candidate for adoption? (y/n)"
	good = gets.chomp
end
	if good == "y"
		good = true
	else 
		good = false
	end

# estimated Age
puts "How old do you think it is?"
age = gets.chomp.to_i
if age == ""
	age = nil
end


