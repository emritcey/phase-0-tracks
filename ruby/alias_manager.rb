# Ask for real name and store.
# Break up first and last name
# Swap the first and last name

puts "What is your first and last name?"
full_name = gets.chomp.downcase
name = full_name.split(' ').reverse!.join(' ')

p name

name = name.split('')

p name 

#######################################################
#other internal methods to use.
# change all vowels to the next vowel 
def next_vowel(letter)
	if letter == ("a")
		puts "e"
	elsif letter == ("e")
		puts "i"
	elsif letter == ("i")
		puts "o"
	elsif letter == ("o")
		puts "u"
	else
		puts "a"
	end
end

###############
# change all consonants to the next consonant 
def next_consonant(letter)
	letter.next
end 

#######################################################

name. do |letter|
	if letter == ("a" || "e" || "i" || "o" || "u")
		next_vowel(letter)
	else 
		next_consonant(letter)
	end
end

# print out new code name 
p name




		