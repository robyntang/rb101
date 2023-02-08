#Write a method that takes a positive integer as an argument
#and returns that number with its digits reversed. Examples:

def reversed_number(number)
  number.to_s.reverse!.to_i
end

p reversed_number(12345)
p reversed_number(12213)
p reversed_number(456)
p reversed_number(12000)
p reversed_number(12003)
p reversed_number(1)