def is_triangle?(*sides)
  return false unless sides.size == 3
  return false unless sides.all? { |side| side > 0 }
  return false unless (sides.sum - sides.max) > sides.max
  true
end

# def triangle(*sides)
#   return :invalid unless is_triangle?(*sides)
#   return :equilateral if sides.all? { |side| sides.all?(side) }
#   return :isosceles if sides.one? { |side| sides.one?(side) }
#   :scalene
#    # return :scalene if sides.all?{ |side| sides.one?(side) }
# end

def triangle(*sides)
  return :invalid unless is_triangle?(*sides)
  case sides.uniq.size
  when 1 then :equilateral
  when 2 then :isosceles
  when 3 then :scalene
  end
end


p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid

