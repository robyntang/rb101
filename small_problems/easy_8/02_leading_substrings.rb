# 02_leading_substrings.rb

# Write a method that returns a list of all substrings
# of a string that start at the beginning of the original string.
# The return value should be arranged in order from shortest to
# longest substring.


# def leading_substrings(string)
#   array = string.split('')
#   new_array = []
#   counter = 0
#   loop do
#     new_array << array[0..counter].join
#     counter += 1
#     break if counter == array.size
#   end
#   new_array
# end

def leading_substrings(string)
  result = []
  0.upto(string.size - 1) do |index|
    result << string[0..index]
  end
  result
end

p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']