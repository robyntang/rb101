# 09_bubble_sort.rb

def bubble_sort!(array)
  counter = 0
  loop do
    swapped = false
    n = 0
    loop do
      if array[1 + n] < array[0 + n]
        array[0 + n], array[1 + n] = array[1 + n], array[0 + n]
        swapped = true
      end
      n += 1
      break if n == (array.size - 1)
    end
    counter += 1
    p counter unless swapped
    break unless swapped
  end
end

array = [1, 2, 4, 6, 7]
bubble_sort!(array)
p array


array = [5, 3]
bubble_sort!(array)
p array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)

