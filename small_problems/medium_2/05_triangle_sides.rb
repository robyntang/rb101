# 05_triangle_sides.rb

def is_triangle?(side1, side2, side3)
  [side1, side2, side3].each do |side|
    return false if side.zero?
  end

  triangle = [side1, side2, side3].sort
  return false if (triangle[0] + triangle[1]) < triangle[-1]

  true
end

def isosceles(side1, side2, side3)
  triangle = [side1, side2, side3]
  triangle.each do |side|
    return true if triangle.count(side) > 1
  end
  false
end

def triangle(side1, side2, side3)
  return :invalid if is_triangle?(side1, side2, side3) == false

  if (side1 == side2) && (side2 == side3)
    return :equilateral
  elsif (side1 != side2) && (side2 != side3) && (side1 != side3)
    return :scalene
  else 
    return :isosceles if isosceles(side1, side2, side3) == true
  end
end







p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid



