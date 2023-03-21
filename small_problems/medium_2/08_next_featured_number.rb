# 08_next_featured_number.rb

def is_featured?(number)
  return false unless number.odd?
  return false unless number % 7 == 0
  return false unless number.to_s.chars.uniq == number.to_s.chars
  true
end

def featured(number)
counter = number
  loop do
    counter += 1
    return counter if is_featured?(counter)
    break if number >= 9_876_543_210
  end
  'There is no possible number that fulfills those requirements.'
end


p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987
p featured(9_999_999_999)