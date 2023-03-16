#10_sum_of_digits.rb

# def sum(number)
#   sum = 0
#   number.to_s.chars.each do |num|
#     sum += num.to_i
#   end
#   sum
# end

def sum(int)
  int.digits.sum
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45