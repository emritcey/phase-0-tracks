puts "How many employees will be taking this survey?"
employee_number = gets.chomp.to_i

while employee_number > 0 

puts "What is your name?"
name = gets.chomp

if name=="Drake Cula"
	name = true
elsif name=="Tu Fang"
	name = true
else
	name = false
end

puts "How old you are you?"
age = gets.chomp.to_i

puts "What year were you born?"
birth_year = gets.chomp.to_i

actual_age = 2016 - birth_year
puts actual_age


puts "Our company cafeteria serves garlic bread. Should we order some for you?(yes/no)"
garlic = gets.chomp

until (garlic=="yes" || garlic=="no")
	puts "Try again. Yes or no?"
	garlic = gets.chomp
end

if garlic =="yes"
	garlic = true
else 
	garlic = false
end

puts "Would you like to enroll in the company's health insurance?"
health = gets.chomp

until (health=="yes" || health=="no")
	puts "Try again. Yes or no?"
	health = gets.chomp
end

if health =="yes"
	health = true
else 
	health = false
end
###########################

puts "Please list any allergies 1 at a time. Type 'done' when finished."
allergies = gets.chomp

until (allergies=="sunshine" || allergies=="done")
puts "Any more?"
allergies = gets.chomp
end

if allergies == "sunshine"
	puts "Probably a Vampire"
else 
	if name == true
		puts "Definitely a Vampire."
	elsif (actual_age != age) && (garlic==false || health==false)
		puts "Almost certainly a vampire."
	elsif (actual_age == age) && (garlic==true || health==true)
		puts "Probably not a Vampire"
	else
		puts "Results inconclusive."
	end

end

employee_number -= 1

###########################

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
end