# # 04_1000_lights.rb

def switch_lights(n)
  array = Array.new(n, false)
  # array = []
  # n.times { |element| array << false }
  1.upto(n) do |round|
    array.each_index do |index|
      array[index] = !array[index] if (index + 1) % round == 0
    end
    # array.map!.with_index do |element, index|
    # ((index + 1) % round) == 0 ? !element : element
    # end
  end 
  on_switches(array)
end

def on_switches(arr)
  new_array = []
  arr.each_with_index do |element, i|
     new_array << (i + 1) if element
  end
  new_array
end


p switch_lights(1) == [1]
p switch_lights(2) == [1]
p switch_lights(3) == [1]
p switch_lights(4) == [1, 4]
p switch_lights(5) == [1, 4]
p switch_lights(10) == [1, 4, 9]