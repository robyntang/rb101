# 9_palindromic_numbers.rb

# Write a method that returns true if its integer argument is palindromic, false otherwise.
# \A palindromic number reads the same forwards and backwards.

# def palindromic_number?(number)
#   number.to_s.to_i == number.to_s.reverse.to_i
# end

def palindrome?(string)
  string == string.reverse
end

def palindromic_number?(number)
  palindrome?(number.to_s)
end

p palindromic_number?(34543) == true
p palindromic_number?(123210) == false
p palindromic_number?(22) == true
p palindromic_number?(5) == true