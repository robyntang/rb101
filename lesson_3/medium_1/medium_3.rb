# def factors(number)
#   divisor = number
#   factors = []
#   if divisor == 0
#     factors << [0,1]
#   else
#     loop do
#       factors << number / divisor if number % divisor == 0
#       divisor -= 1
#       break if divisor == 0
#     end
#   end
#   factors.flatten
# end

def factors(number)
  divisor = number
  factors = []
  while divisor > 0
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end
  factors
end

p factors(15)

