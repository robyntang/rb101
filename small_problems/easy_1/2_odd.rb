# Write a method that takes one integer argument, which may be positive,
# negative, or zero. This method returns true if the number's absolute value is odd. 
# You may assume that the argument is a valid integer value.

def is_odd(num)
    num % 2 != 0
end

puts is_odd(10)