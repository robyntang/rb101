# 6_odd_numbers.rb

numbers = (1..99)

numbers.each do |number|
  unless number.even?
  p number
  end
end