def add_to_array(arr, var)
  arr << var
  #p "The new array is: #{arr}"
  p arr
end


def build_array(arr, var, p)
  p "The array is: #{arr}, #{var}, #{p}"
  p arr, var, p
  
end
  
  

array = []

array = [1, 2, 3, "4", true]

p array

array.delete_at(2)

p array

array.insert(2, "inserted")
p array

array.shift
p array

x = array.include?(2)
p "It is #{x} that this array includes the number 2." 

second_array = [15, 47, "Martha", "Emma", false]

added_array = array + second_array
p added_array


build_array(1, "two", nil)

add_to_array([1, 2, 3], 1000)
add_to_array([], 999)
add_to_array(["a", "b", "c", 1, 2],3)
