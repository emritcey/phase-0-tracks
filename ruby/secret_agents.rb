# #An encrypt method that advances every letter of a string one letter forward. So "abc" would become "bcd". For now, you can assume lowercase input and output. 


# #takes a string, stores it
# #take each letter
# #move it one letter forward
# #print out each letter
# def encrypt(string)
#   index = 0 

  
#  while index < string.length
#    puts string[index].next
#    index += 1
#  end
# end 

# puts encrypt("abc")
# puts encrypt("zed")


# #A decrypt method that reverses the process above. Note that Ruby doesn't have a built-in method for going backward one letter. How can you find out where a letter is in the alphabet, then access the letter right before it? Hint: In the IRB session above, you learned how to ask a string for the index of a letter. "abcdefghijklmnopqrstuvwxyz" counts as a string.

# def decrypt(string)
#   index = 0 
#   alphabet = "abcdefghijklmnopqrstuvwxyz"

  
  
#   while index < string.length
#     x = alphabet.index(string[index])
#     index += 1
#     x -= 1
#     puts alphabet[x]
#   end
# end 

# puts decrypt("bcd")
# puts decrypt("afe")


# #An encrypt method that advances every letter of a string one letter forward. So "abc" would become "bcd". For now, you can assume lowercase input and output. 


# #takes a string, stores it
# #take each letter
# #move it one letter forward
# #print out each letter
# def encrypt(string)
#   index = 0 

  
#  while index < string.length
#    puts string[index].next
#    index += 1
#  end
# end 

# puts encrypt("abc")
# puts encrypt("zed")


# #A decrypt method that reverses the process above. Note that Ruby doesn't have a built-in method for going backward one letter. How can you find out where a letter is in the alphabet, then access the letter right before it? Hint: In the IRB session above, you learned how to ask a string for the index of a letter. "abcdefghijklmnopqrstuvwxyz" counts as a string.

# def decrypt(string)
#   index = 0 
#   alphabet = "abcdefghijklmnopqrstuvwxyz"

  
  
#   while index < string.length
#     x = alphabet.index(string[index])
#     index += 1
#     x -= 1
#     puts alphabet[x]
#   end
# end 

# puts decrypt("bcd")
# puts decrypt("afe")

# decrypt(encrypt("The duck flies at midnight"))

#Asks a secret agent (the user) whether they would like to decrypt or encrypt a password

def decrypt(string)
    index = 0 
    alphabet = "abcdefghijklmnopqrstuvwxyz"

    while index < string.length
      x = alphabet.index(string[index])
      index += 1
      x -= 1
      puts alphabet[x]
    end
  end 

  def encrypt(string)
    index = 0 
    while index < string.length
      puts string[index].next
      index += 1
      end
    end 
 
puts "Welcome to the password decoder. Please enter a password you would like to mess with." 
  password = gets.chomp 
  

puts "Would you like to decrypt or encrypt this password?"
  action = gets.chomp

until (action=="encrypt" || action=="decrypt")
    puts "Try again. Do you want to decrypt or encrypt a password?"
    action = gets.chomp
end

  if action == "encrypt" 
    print encrypt(password)
 
  else 
    print decrypt(password)
  end 
