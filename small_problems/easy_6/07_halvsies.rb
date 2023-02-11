#07_halvsies.rb

def halvsies(array)
  array_1 = []
  array_2 = []
  
  while array.size > 0
    array_1 << array.shift
    array_2 << array.pop
  end
  
  array =  array_1, array_2.compact.reverse!
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]