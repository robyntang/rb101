#09_does_my_list_include.rb

# #Write a method named include? that takes an Array and a search value as arguments.
# This method should return true if the search value is in the array, false if it is not.
# You may not use the Array#include? method in your solution.


def include?(array, number)
  array.any? { |element| element == number }
end



p include?([1,2,3,4,5], 3) 
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false