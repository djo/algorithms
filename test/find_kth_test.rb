require 'test/unit'
require_relative '../find_kth'

class FindKthTest < Test::Unit::TestCase
  def test_find
    assert_equal find([1, 0, 100, -10], 0), -10
    assert_equal find([1, 0, 100, -10], 1), 0
    assert_equal find([1, 0, 100, -10], 2), 1
    assert_equal find([1, 0, 100, -10], 3), 100
    assert_equal find([1, 2, 3], 1), 2
  end
end
