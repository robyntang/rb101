# 04_swap_case.rb

# Write a method that takes a string as an argument
# and returns a new string in which every uppercase
# letter is replaced by its lowercase version,
# and every lowercase letter by its uppercase version.
# All other characters should be unchanged.

# You may not use String#swapcase; write your own version of this method

# UPPERCASE_CHARS = ('A'..'Z').to_a
# LOWERCASE_CHARS = ('a'..'z').to_a

# def swapcase(string)
#   new_string = ''
#   string.chars.map do |char|
#     if UPPERCASE_CHARS.include?(char)
#       new_string += char.downcase!
#     elsif LOWERCASE_CHARS.include?(char)
#       new_string += char.upcase!
#     else
#       new_string += char
#     end
#   end
#   new_string
# end

def swapcase(string)
  characters = string.chars.map do |char|
    if char =~ /[a-z]/
      char.upcase
    elsif char =~ /[A-Z]/
      char.downcase
    else
      char
    end
  end
  characters.join
end

p swapcase('Camel Case')
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'


