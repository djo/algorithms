require 'test_helper'

class MatrixTest < Test::Unit::TestCase
  def test_transpose
    actual = [
      [1,2,3],
      [4,5,6],
      [7,8,8]
    ]
    expected = [
      [1, 4, 7],
      [2, 5, 8],
      [3, 6, 8]
    ]

    assert_equal Matrix.transpose(actual), expected
  end
end
