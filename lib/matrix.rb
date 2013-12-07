# Transpose of a matrix in Linear Algebra,
# see examples in test/matrix_test.rb
module Matrix
  def self.transpose(matrix)
    transposed = []

    matrix.each do |row|
      row.each_with_index do |el, j|
        transposed << [] if transposed[j].nil?
        transposed[j] << el
      end
    end

    transposed
  end
end
