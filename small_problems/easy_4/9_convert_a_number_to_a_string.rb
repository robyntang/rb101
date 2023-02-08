# 9_convert_a_number_to_a_string.rb

# Write a method that takes a positive new_integer_string or zero, and converts it to a string representation.

# You may not use any of the standard conversion methods available in Ruby, such as Integer#to_s,
# String(), Kernel#format, etc. Your method should do this the old-fashioned way and construct the
# string by analyzing and manipulating the number.

def integer_to_string(number)
  if number.zero?
    "0"
  else
    counter = Math.log10(number).to_i
    new_integer_string = []

    loop do 
      a = (number / (10**counter))
      new_integer_string << a
      number -= (a * (10**counter))
      counter -= 1
      break if counter == -1
    end
  new_integer_string.join
end
end


p integer_to_string(4321)
p integer_to_string(0)
p integer_to_string(5000)