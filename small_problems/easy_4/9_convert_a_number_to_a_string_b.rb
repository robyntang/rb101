# 9_convert_a_number_to_a_string_b.rb

def integer_to_string(number)
  new_integer_string = []
  power = number.zero? ? 0 : Math.log10(number).to_i
  (power + 1).times do |x|
    digit, number = number.divmod(10 ** (power - x))
    new_integer_string << digit
  end
  new_integer_string.join
end

# def integer_to_string(int)
#   int.digits.reverse.join
# end


p integer_to_string(4321)
p integer_to_string(0)
p integer_to_string(5000)



# def integer_to_string(number)
#   if number.zero?
#     "0"
#   else
#     counter = Math.log10(number).to_i
#     new_integer_string = []
#     loop do 
#       digit, number = number.divmod(10**counter)
#       new_integer_string << digit
#       counter -= 1
#       break if counter == -1
#     end
#   new_integer_string.join
#   end
# end