# 06_tri-angles.rb

def is_triangle?(*angles)
  return false unless angles.all? { |side| side > 0 }
  return false unless angles.sum == 180
  true
end

def triangle(*angles)
  return :invalid unless is_triangle?(*angles)
  return :right if angles.one?(90)
  return :acute if angles.all? { |angle| angle < 90 }
  return :obtuse if angles.one? { |angle| angle > 90 }
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid