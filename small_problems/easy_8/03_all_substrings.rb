# 03_all_substrings.rb

def leading_substrings(string)
  result = []
  0.upto(string.size - 1) do |index|
    result << string[0..index]
  end
  result
end

# def substrings(string)
#   result = []
#   counter = 0

#     loop do
#       result << leading_substrings(string[counter..-1])
#       counter += 1
#       break if counter == string.size
#     end
#     result.flatten
# end 

def substrings(string)
  results = []
  (0..string.size).each do |start_index|
    this_substring = string[start_index..-1]
    results.concat(leading_substrings(this_substring))
  end
  results
end



p substrings('abcde')