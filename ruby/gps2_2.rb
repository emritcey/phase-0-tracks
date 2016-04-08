# Create a new list

# Add an item with a quantity to the list
# Remove an item from the list
# Update quantities for items in your list
# Print the list (Consider how to make it look nice!)

# Method to create a list
def groceries(string)
  list = {}
  string.split(" ").each do |item|
    list[item] = 1
  end
  list
end
our_list = groceries("carrot pizza")
#p our_list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # [fill in any steps here]
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]

# Method to add an item to a list
# input: item name and optional quantity
# steps: 
# output:
def add_item(list, item, x)
  list[item] = x
  list
end
#p add_item(our_list, "potato", 5)

# Method to remove an item from the list
# input:
# steps:
# output:
def remove_item(list, item)
  list.delete(item)
  list
end
#p remove_item(our_list, "potato")
# Method to update the quantity of an item
# input:
# steps:
# output:
def update_item(list, item, x)
  if list.include?(item)
    list[item] = x 
  else 
    puts "Item not in list."
  end
  list
end
#p update_item(our_list, "carrot", 5)
    
# Method to print a list 
# input: list
# steps: 
# iterate each key value pair
# print quantity and item
# output: list
def print_list(list)
  p "Grocery List for the Week:"
  list.each do |groceries, quantity|
    p "#{groceries}: #{quantity} "
  end


end

# p print_list(our_list)

gps_list = {}

add_item(gps_list, "lemonade", 2)
add_item(gps_list, "tomatoes", 3)
add_item(gps_list, "onions", 1)
add_item(gps_list, "ice cream", 4)
remove_item(gps_list, "lemonade")
update_item(gps_list, "ice cream", 1)

print_list(gps_list)


# # ------------------------------------
# What did you learn about pseudocode from working on this challenge?
# We definitely did most of our pseudocoding out loud, versus physically on the page. 
# I think we learned that it is important to figure out intentions before beginning to 
#write out the code itself. 

# What are the tradeoffs of using arrays and hashes for this challenge?
# We used a hash because we wanted to store each item with it's quantity in the list. If we had used an
# array, I am not sure we could have held that information unless we had used 2 arrays that were linked together
# but the trade off there would have been that it is messier and less organized code. 

# What does a method return?
# A method returns edited information on the list that we were working with .

# What kind of things can you pass into methods as arguments?
# Strings, integers, floats, booleans, and any of these in variable form . 

# How can you pass information between methods?
# We started this by using a global variable, but later decided it made things more complicated,
# and removed it. We used the extra parameter of "list" so that it was easier to pass the same 
# information through different methods without a class. 

# What concepts were solidified in this challenge, and what concepts are still confusing?
 # This challenge definitely showed why a class is so helpful! Since we didn't use one in the 
 # challenge, it was trickier and that showed why the class is so important and useful. 




