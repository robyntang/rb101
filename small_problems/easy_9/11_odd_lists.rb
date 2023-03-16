#11_odd_lists.rb

def oddities(array)
  oddities_array = []
  array.each_with_index do |element, index|
    next unless index.even?
    oddities_array << element 
  end
  oddities_array
end

p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []
p oddities([1, 2, 3, 4, 1]) == [1, 3, 1]