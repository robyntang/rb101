#03_counting_up.rb

# Write a method that takes an integer argument,
# and returns an Array of all integers, in sequence,
# between 1 and the argument.

# You may assume that the argument will always be a
# valid integer that is greater than 0.\


# def sequence(number)
#   new_array = []
#   1.upto(number) { |n| new_array << n }
#   new_array
# end

def sequence(number)
  (1..number).to_a
end

p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]