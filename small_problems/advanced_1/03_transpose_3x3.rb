# 03_transpose_3x3.rb

def transpose(matrix)
  new_matrix = []

  (matrix.size).times do |array|
    new_matrix << []
  end

  0.upto(matrix.size - 1) do |i|
    0.upto(matrix.size - 1) do |inner_index|
      new_matrix[i] << matrix[inner_index][i]
    end
  end
  new_matrix
end


matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6],
]


new_matrix = transpose(matrix)

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]