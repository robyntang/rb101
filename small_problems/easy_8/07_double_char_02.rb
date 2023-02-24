# 07_double_char_02.rb

# Write a method that takes a string,
# and returns a new string in which every consonant
# character is doubled. Vowels (a,e,i,o,u), digits,
# punctuation, and whitespace should not be doubled

# def double_consonants(string)
#   new_string = []
#   string.chars.each do |letter|
#     if letter.match(/[AEIOUaeiou]/)
#       new_string << letter 
#     elsif
#       letter.match(/[A-Za-z]/)
#       2.times { new_string << letter }
#     else
#       new_string << letter 
#     end
#   end
#   new_string.join
# end

CONSONANTS = %w(b c d f g h j k l m n p q r s t v w x y z)

def double_consonants(string)
  result = ''
  string.each_char do |char|
    result << char
    result << char if CONSONANTS.include?(char.downcase)
  end
  result
end


p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""

