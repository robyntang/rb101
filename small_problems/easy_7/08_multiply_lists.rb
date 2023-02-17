 # 08_multiply_lists.rb

 def multiply_list(array1, array2)
  (array1.zip(array2)).map {|x,y| x*y}
 end

 p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
 