# 04_matching_parentheses.rb

def balanced?(string)

open_parenthesis_counter = 0
closed_parenthesis_counter = 0

return false if string.count('(') != string.count(')')
  
string.each_char do |letter|
  return false if closed_parenthesis_counter > open_parenthesis_counter
  if letter == '('
    open_parenthesis_counter += 1
  elsif letter == ')'
    closed_parenthesis_counter += 1
  else
  end
end

true

end


p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false