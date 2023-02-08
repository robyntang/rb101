# 6_running_totals.rb

# Write a method that takes an Array of numbers, and returns
# an Array with the same number of elements,
# and each element has the running total from the original Array.


def running_total(array)
  sum = 0
  array.map { |value| sum += value}
end



# def running_total(array)
#   sums = []
#   count = 1
#   sums < array[0]
#   until running_total.size == sums.size
#     array.map do
#       sums << array[count] + array{count-1}
#       count + 1
#     end
#   end 
# end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []