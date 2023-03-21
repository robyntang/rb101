# 10_sum_square_square_sum.rb

# def sum_square_difference(number)
#   array = []
#   1.upto(number).each { |num| array << num }

#   square_of_sum = array.sum**2
#   sum_of_squares = array.map { |num| num**2 }.sum

#   square_of_sum - sum_of_squares
# end

def sum_square_difference(num)
  # (1..num).sum ** 2 - (1..num).inject { |sum, n| sum + n * n }

  (1..num).sum ** 2 - (1..num).inject { |sum, n| sum + n * n }
end




p sum_square_difference(3) == 22
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150