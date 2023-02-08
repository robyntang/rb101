# 6_exclusive_or.rb

# def xor?(value1, value2)
#   case
#   when value1 == false && value2 == true 
#     return true
#   when value1 == true && value2 == false
#     return true
#   else
#     return false
#   end
# end

def xor?(value1, value2)
  return true if value1 && !value2
  return true if value2 && !value1
  false 
end

p xor?(5.even?, 4.even?) 
p xor?(5.odd?, 4.odd?) 
p xor?(5.odd?, 4.even?)
p xor?(5.even?, 4.odd?)
