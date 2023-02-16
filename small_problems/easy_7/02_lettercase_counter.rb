# 02_lettercase_counter.rb

# Write a method that takes a string,
# and then returns a hash that contains 3 entries:
# one represents the number of characters in the string
# that are lowercase letters, one the number of characters
# that are uppercase letters,
# and one the number of characters that are neither.

def letter_case_count(string)
  {lowercase: string.count('a-z'), uppercase: string.count('AB-Z'), neither: string.count('^ab-z', '^AB-Z')}
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }






# UPPERCASE_CHARS = ('A'..'Z').to_a
# LOWERCASE_CHARS = ('a'..'z').to_a

# def letter_case_count(string)
#   counts = { lowercase: 0, uppercase: 0, neither: 0 }

#   string.chars.each do |char|
#     if UPPERCASE_CHARS.include?(char)
#       counts[:uppercase] += 1
#     elsif LOWERCASE_CHARS.include?(char)
#       counts[:lowercase] += 1
#     else
#       counts[:neither] += 1
#     end
#   end

#   counts
# end