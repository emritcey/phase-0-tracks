puts "What is your name?"
name = gets.chomp


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

puts "Health Insurance: #{health}, Garlic Bread: #{garlic}, #{actual_age}}"

# #If the employee got their age right, and 
# is willing to eat garlic bread or sign up for insurance, t
# he result is “Probably not a vampire.”

#if (actual_age == age) && (garlic==false || health==false)
# #If the employee got their age wrong, and hates garlic bread 
# or waives insurance, the result is “Probably a vampire.”
# If the employee got their age wrong, hates garlic bread, 
# and doesn’t want insurance, the result is “Almost certainly a vampire.”


# Even if the employee is an amazing 
# liar otherwise, anyone going by the name of 
# “Drake Cula” or “Tu Fang” is clearly a vampire, because come on. In that case, you should print “Definitely a vampire.”
# Otherwise, print “Results inconclusive.”