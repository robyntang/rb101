#06_combining_arrays.rb

# Write a method that takes two Arrays as arguments,
# and returns an Array that contains all of the values
# from the argument Arrays. There should be no duplication
# of values in the returned Array,
# even if there are duplicates in the original Arrays.

def merge(array_1, array_2)
  array_1 | array_2
end

p merge([1, 3, 5], [3, 6, 9])


# def merge(array1, array2)
#   new_array = (array1 + array2).sort
#   test = new_array.reject.with_index do | char, idx |
#     char == new_array[idx + 1]
#   end
#   test
# end