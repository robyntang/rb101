# 02_rotation_part_2.rb

def rotate_array(array)
  array[1..-1] + [array[0]]
end


def rotate_rightmost_digits(number, idx)
  array = number.to_s.split('')
  array[-idx..-1] = rotate_array(array[-idx..-1])
  array.join.to_i
end


# def rotate_rightmost_digits(number, n)
#   all_digits = number.to_s.chars
#   all_digits[-n..-1] = rotate_array(all_digits[-n..-1])
#   all_digits.join.to_i
# end


p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917