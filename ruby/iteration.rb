def status
  puts "What is your name?"
    name1 = gets.chomp
  puts "Status is good."
  yield(name1)

end

status { |name1| puts "#{name1}, Everything is still good!" }

array = ["a", "b", "c"]

hash = {name: "Emma", age: 23, home: "Chicago"  }



array.each do |letter| 
  puts letter
end 

hash.each do |info, answer| 
  puts "#{info}: #{answer}" 
end


array.map! do |letter| 
  puts letter.next! 
  end 
  

hash.map do |info, answer|
  new_info = info.upcase
  puts "#{new_info}: #{answer}" 
  end 
  

# # A method that iterates through the items, deleting any that meet a certain condition (for example, deleting any numbers that are less than 5).
    
numbers = [1, 2, 3, 4, 5]
# one = numbers.each do |x|
  numbers.delete_if { |x| x < 5 }


p numbers

# # # A method that filters a data structure for only items that do satisfy a certain condition (for example, keeping any numbers that are less than 5).

numbers_two = [1, 2, 3, 4, 5]

numbers_two.keep_if { |x| x < 5 }
  
p numbers_two

  
# # A different method that filters a data structure for only items satisfying a certain condition -- Ruby offers several options!
  
numbers_three = [1, 2, 3, 4, 5]
numbers_three.keep_if { |x| x == 3 }

p numbers_three

  
# A method that will remove items from a data structure until the condition in the block evaluates to false, then stops.
  
numbers_four =  [1, 2, 3, 4, 5]

xxx = numbers_four.drop_while { |x| x < 3 } 

p xxx
   
  
