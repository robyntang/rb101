# 04_transpose_mxn.rb

def transpose(matrix)
  new_matrix = []

  (matrix[0].size).times do |array|
    new_matrix << []
  end

  0.upto(matrix[0].size - 1) do |i|
    0.upto(matrix.size - 1) do |inner_index|
      new_matrix[i] << matrix[inner_index][i]
    end
  end
  new_matrix
end

p transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
p transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
p transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
  [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
p transpose([[1]]) == [[1]]