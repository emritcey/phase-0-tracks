# Create empty Hash
new_client = {}

# Enter Client's Name
puts "What is the clients name?"
name = gets.chomp 
# initial data into empty hash
new_client = {:name => name}
# Enter Client's Age
# convert to integer
#store in hash 
puts "How old is the client?"
age = gets.chomp.to_i

new_client[:age] = age

# Enter Client's Number of Children
puts "How many children do you have?"
children = gets.chomp.to_i
# convert to integer
new_client[:children] = children

# Enter Client's Decor Theme
puts "What is the cliet's decor theme?"
decor_theme = gets.chomp

new_client[:decor_theme] = decor_theme

# Enter if client likes blue 
puts "Does the client like blue?(yes/no)"
blue = gets.chomp
if blue == "yes"
  blue = true
else 
  blue = false
end

new_client[:blue] = blue
# convert to true or false


#Print back all information 
p new_client

puts "Would you like to change any of your answers? State which key you would like to change: name, decor, blue, age, children, or type done if all ok."
key = gets.chomp

if key == "decor"
  puts "What would you like to change it to?"
    new_decor = gets.chomp
    new_client[:decor_theme] = new_decor
  p new_client
  
elsif key == "children"
  puts "What would you like to change it to?"
    new_children = gets.chomp.to_i
  new_client[:children] = new_children
  p new_client

elsif key == "name"
  puts "What would you like to change it to?"
    new_name = gets.chomp
  new_client[:name] = new_name
  p new_client

elsif key == "blue"
    puts "What would you like to change it to?"
    new_blue = gets.chomp
    if new_blue == "yes"
      new_blue = true
    else 
      new_blue = false
    end
  new_client[:blue] = new_blue
  p new_client

elsif key == "age"
  puts "What would you like to change it to?"
    new_age = gets.chomp.to_i
  new_client[:age] = new_age
  p new_client

else 
  puts "Thanks you are finished!"
end

