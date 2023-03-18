def shape(*sides)
  array = *sides
  p array
end


def is_triangle?(*sides)
  array = *sides
  return false unless array.size == 3
  return false unless array.all? { |side| side > 0 }
  return false unless (array.sum - array.max) > array.max
  true
end

def triangle(*sides)
  return :invalid unless is_triangle?(*sides)
  array = *sides
  return :equilateral if array.min == array.max
  return :scalene if array.all?{ |side| array.one?(side) }
  :isosceles
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid

