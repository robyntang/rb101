# 08_merge_sort.rb

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

def merge_sort(array)
  return array if array.length == 1

  first_array = array[0..((array.length/2)-1)]
  second_array = array[(array.length/2)..-1]

  first_array = merge_sort(first_array)
  second_array = merge_sort(second_array)

  return merge(first_array, second_array)

end

a = [2,3,5,9,7,4,5]
p merge_sort(a)