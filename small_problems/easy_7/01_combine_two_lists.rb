# 01_combine_two_lists.rb

# Write a method that combines two Arrays passed in as arguments,
# and returns a new Array that contains all elements from both Array arguments,
# with the elements taken in alternation.

# You may assume that both input Arrays are non-empty,
# and that they have the same number of elements.


def interleave(array1, array2)

  counter = 0
  new_array = []
  while counter < array2.length
    new_array << array1[counter] << array2[counter]
    counter += 1
  end
  new_array
end



  p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']