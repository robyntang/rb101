# 1_story_long_short.rb

# Write a method that takes two strings as arguments,
# determines the longest of the two strings,
# and then returns the result of concatenating the shorter string,
# the longer string, and the shorter string once again. 
# You may assume that the strings are of different lengths.

def short_long_short(str1, str_2)
  str1.length <= str_2.length ? str1 + str_2 + str1 : str_2 + str1 + str_2
end

p short_long_short('abc', 'defgh')
p short_long_short('abcde', 'fgh')
p short_long_short('', 'xyz')