#03_fibonacci_number.rb

# The Fibonacci series is a series of numbers
# (1, 1, 2, 3, 5, 8, 13, 21, ...) such that the
# first 2 numbers are 1 by definition, and each 
# subsequent number is the sum of the two previous numbers. 
# This series appears throughout the natural world.

# Computationally, the Fibonacci series is a very simple series,
# but the results grow at an incredibly rapid rate. For example,
# the 100th Fibonacci number is 354,224,848,179,261,915,075 -- 
# that's enormous, especially considering that it takes 6 iterations
# before it generates the first 2 digit number.

# Write a method that calculates and returns the index
# of the first Fibonacci number that has the number of
# digits specified as an argument. (The first Fibonacci
# number has index 1.)

# def fibonacci(number)
#   first_num, second_num = [1,1]
#   (number - 1).times do 
#     first_num, second_num = second_num, first_num + second_num
#   end

#   first_num
# end

# def find_fibonacci_index_by_length(number)
#   counter = 0
#   arr = []
#   loop do 
#     arr << fibonacci(counter)
#     counter += 1
#     break if arr[-1] >= (10**(number - 1))
#   end
#   arr.index(arr[-1])
# end

def find_fibonacci_index_by_length(number_digits)
  first = 1 
  second = 1
  index = 2

  loop do
    index += 1
    fibonacci = first + second 
    break if fibonacci.to_s.size >= number_digits 

    first = second
    second = fibonacci 
  end 

  index
end


p find_fibonacci_index_by_length(2)
p find_fibonacci_index_by_length(3)
p find_fibonacci_index_by_length(10)
p find_fibonacci_index_by_length(100)
p find_fibonacci_index_by_length(1000)
p find_fibonacci_index_by_length(10000)