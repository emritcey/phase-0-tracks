# Ask for real name and store.
# Break up first and last name
# Swap the first and last name

puts "What is your first and last name?"
full = gets.chomp
full_name = full.downcase
name = full_name.split(' ').reverse!.join(' ')

#p name

name = name.split('')
new_letters = []
#p name 

#######################################################
#other internal methods to use.
# change all vowels to the next vowel 
def next_vowel(letter)
	if letter == ("a")
		letter = "e"
	elsif letter == ("e")
		letter = "i"
	elsif letter == ("i")
		letter = "o"
	elsif letter == ("o")
		letter = "u"
	else
		letter = "a"
	end
end

###############
# change all consonants to the next consonant 
def next_consonant(letter)
	c_alphabet = "bcdfghjklmnpqrstvqwxyzb"
 	x = c_alphabet.index(letter)
  	x += 1
	 c_alphabet[x]

end

#######################################################

# take each letter and assess if consonant, vowel, or space.

name.each do |letter|
	if (letter == "a") || (letter == "e") || (letter == "i") || (letter == "o") || (letter == "u")
		new_letters << next_vowel(letter)
	elsif letter == " "
		new_letters << letter
	else
		new_letters << next_consonant(letter)
	end
end 

# print out new code name 
new = new_letters.join.split(' ').each { |x| x.capitalize!}.join(' ')

puts "#{full} is now known as #{new}."





		