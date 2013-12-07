# The transpose of a matrix in linear algebra
def transpose(matrix)
  transposed = []

  matrix.each do |row|
    row.each_with_index do |el, j|
      transposed << [] if transposed[j].nil?
      transposed[j] << el
    end
  end

  transposed
end
