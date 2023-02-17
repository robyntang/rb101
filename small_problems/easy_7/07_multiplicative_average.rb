# 07_multiplicative_average.rb

# def show_multiplicative_average(array)
#   product = 1.to_f
#   array.each { |number| product *= number }
#   average = (product / array.length).round(3)
#   "The result is #{average}"
# end

def show_multiplicative_average(nums)
  result = nums.inject(1.0, &:*) / nums.size
  format('The result is %.3f', result)
end

p show_multiplicative_average([3, 5])                # => The average is 7.500
p show_multiplicative_average([6])                   # => The average is 6.000
p show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The average is 28361.667