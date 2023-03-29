# 07_merge_sorted_lists.rb

# def merge(arr1, arr2)

#   sorted_array = []
#   arr1_counter = 0
#   arr2_counter = 0

# loop do
#     case
#     when arr1 == []
#       sorted_array << arr2
#       return sorted_array.flatten
#     when arr2 == []
#       sorted_array << arr1
#       return sorted_array.flatten
#     when arr1[arr1_counter] <= arr2[arr2_counter]
#       sorted_array << arr1[arr1_counter]
#       arr1_counter += 1
#     when arr2[arr2_counter] <= arr1[arr1_counter]
#       sorted_array << arr2[arr2_counter]
#       arr2_counter += 1
#     else
#     end
#   break if arr1_counter == arr1.length || arr2_counter == arr2.length
#   end

# unless arr1_counter == arr1.length
#   sorted_array << arr1[arr1_counter]
# end
# unless arr2_counter == arr2.length
#   sorted_array << arr2[arr2_counter]
# end
  
# sorted_array
# end



def merge(arr1, arr2)
  arr1_copy, arr2_copy = arr1.dup, arr2.dup
  result = []
  until arr1_copy.empty?
    case arr1_copy.first <=> arr2_copy.first
    when 1 then result << arr2_copy.shift
    else result << arr1_copy.shift
    end
  end
  result + arr2_copy
end

p merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
p merge([], [1, 4, 5]) == [1, 4, 5]
p merge([1, 4, 5], []) == [1, 4, 5]
p merge([2, 2], [1, 1, 3]) == [1, 1, 2, 2, 3]

