# 04_palindromic_substrings.rb

#Write a method that returns a list of
#all substrings of a string that are palindromic. 

# The return value should be arranged in the same sequence
# as the substrings appear in the string.
# Duplicate palindromes should be included multiple times.

def leading_substrings(string)
  result = []
  0.upto(string.size - 1) do |index|
    result << string[0..index]
  end
  result
end


def substrings(string)
  results = []
  (0...string.size).each do |start_index|
    this_substring = string[start_index..-1]
    results.concat(leading_substrings(this_substring))
  end
  results
end

def palindrome?(string)
  string == string.reverse && string.size > 1
end

def palindromes(string)
  all_substring = substrings(string)
  results = []
  all_substring.each do |substring|
    results << substring if palindrome?(substring)
  end
  results
end




p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]