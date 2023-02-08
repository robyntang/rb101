# 8_palindromic_string_2.rb

# when reviewing it is important here to look into RegExp 
# https://regexr.com/


def palindrome?(string)
  string == string.reverse
end

# def real_palindrome?(string)
#   string = string.downcase.delete('^a-z0-9')
#   palindrome?(string)
# end

def real_palindrome?(str)
  test = str.gsub(/[^\w_]/,"").downcase
  palindrome?(test)
end

p real_palindrome?('madam')
p real_palindrome?('Madam')         
p real_palindrome?("Madam, I'm Adam")
p real_palindrome?('356653')
p real_palindrome?('356a653')
p real_palindrome?('123ab321')