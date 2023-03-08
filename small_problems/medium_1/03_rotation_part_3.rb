# 03_rotation_part_3.rb

def rotate_array(array)
  array[1..-1] + [array[0]]
end

def rotate_rightmost_digits(number, idx)
  array = number.to_s.split('')
  array[-idx..-1] = rotate_array(array[-idx..-1])
  array.join.to_i
end


# def max_rotation(number)
#   counter = number.to_s.length.to_i
#   loop do
#     number = rotate_rightmost_digits(number, counter)
#     counter -= 1
#     break if counter == 0
#   end
#   number
# end

def max_rotation(number)
  number_digits = number.to_s.size
  number_digits.downto(2) do |n|
    number = rotate_rightmost_digits(number, n)
  end
  number
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845