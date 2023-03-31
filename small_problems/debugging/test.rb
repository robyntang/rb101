p [1, 2, 3, 4].reduce(:+)
p [1, 2, 3, 4].reduce(6, :+)
p [1, 2, 3, 4].reduce { |memo, operand| memo + operand }
p [1, 2, 3, 4].reduce(6) { |memo, operand| memo + operand }


hash = { 
  key1: [1, 2, 3, 4],
  key2: [5, 6, 7, 8],
  key3: [1, 2, 3, 4]
}

test = hash.reduce(0) do |memo, (key, value)|
  memo + value.sum
end

p test