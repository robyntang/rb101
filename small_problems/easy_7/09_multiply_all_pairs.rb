# 09_multiply_all_pairs.rb


# def multiply_all_pairs(array1, array2)
#   counter = 0
#   new_array = []
#   loop do 
#     array2.each do |number|
#       new_array << array1[counter] * number
#     end
#     counter += 1
#     break if counter == array1.length

#   end
#   new_array.sort
# end


# def multiply_all_pairs(array_1, array_2)
#   products = []
#   array_1.each do |item_1|
#     array_2.each do |item_2|
#       products << item_1 * item_2
#     end
#   end
#   products.sort
# end

def multiply_all_pairs(array_1, array_2)
  array_1.product(array_2).map { |num1, num2| num1 * num2 }.sort
end


p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]