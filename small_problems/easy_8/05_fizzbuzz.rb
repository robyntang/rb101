# 05_fizzbuzz.rb

# #Write a method that takes two arguments:
# the first is the starting number,
# and the second is the ending number
# Print out all numbers from the starting number 
# to the ending number,
# except if a number is divisible by 3, print "Fizz", 
# if a number is divisible by 5, print "Buzz",
# and finally if a number is divisible by 3 and 5, print "FizzBuzz".


def print_number(number)
  case
  when number % 3 == 0 && number % 5 == 0
    'FizzBuzz'
  when number % 3 == 0
    'Fizz'
  when number % 5 == 0
    'Buzz'
  else
    number
  end
end

def fizzbuzz(number1, number2)
  new_string = []
  (number1..number2).each do |number|
    new_string << print_number(number)
  end
  new_string.join(', ')
end

p fizzbuzz(1, 36)