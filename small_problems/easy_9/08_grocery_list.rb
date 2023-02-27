#08_grocery_list.rb

# def buy_fruit(((array1, number),(array2, number2),(array3, number3)))
#   new_array = []
#   number.times { new_array << array1}
#   number2.times { new_array << array2}
#   number3.times { new_array << array3}
#   new_array
# end

# def buy_fruit(list)
#   expanded_list = []

#   list.each do |item|
#     fruit, quantity = item[0], item[1]
#     quantity.times { expanded_list << fruit}
#   end

#   expanded_list
# end

def buy_fruit(list)
  list.map { |fruit, quantity| [fruit] * quantity }.flatten
end


p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]])