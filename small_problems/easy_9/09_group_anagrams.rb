#09_group_anagrams.rb

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

result = words.each_with_object({}) do |word, obj|
  key = word.chars.sort
  value = words.select do |match|
    key == match.chars.sort
  end
  obj.store(key, value)
end
result.each_value {|value| p value}



# # test = words.group_by do |word|
# #   word.chars.sort
# # end

# # hash = {}

# words.each do |word|
#   x = words.select do |match|
#     word.chars.sort == match.chars.sort
#   end
#   hash.store(word.chars.sort, x)
# end




# p hash  

# hash.each_value do |value|
#   p value
# end


# words.group_by {|word| word.chars.sort}.each_value do |value|
#   p value
# end


