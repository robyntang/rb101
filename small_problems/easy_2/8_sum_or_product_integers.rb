# 8_sum_or_product_integers.rb

def sum_of_numbers(number)
  (1..number).sum
end

def product_of_numbers(number)
  (1..number).inject(:*)
end

puts ">> Please enter an integer greater than 0:"
number = gets.chomp.to_i 

puts ">> Enter 's' to complete the sum, 'p' to compute the product."
answer = gets.chomp 

if answer == 'p'
  puts product_of_numbers(number)
elsif answer == 's'
  puts sum_of_numbers(number)
else puts 'Invalid. Please try again.'
end