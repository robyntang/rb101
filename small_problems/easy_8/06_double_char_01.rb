# 06_double_char_01.rb

# Write a method that takes a string,
# and returns a new string in which every character is doubled.

def repeater(string)
  new_string = []
  string.chars.each do |letter|
    2.times { new_string << letter }
  end
  new_string.join
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''