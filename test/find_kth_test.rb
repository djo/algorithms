require 'test_helper'

class FindKthTest < Test::Unit::TestCase
  def test_find
    assert_equal FindKth.new([1, 0, 100, -10]).find(0), -10
    assert_equal FindKth.new([1, 0, 100, -10]).find(1), 0
    assert_equal FindKth.new([1, 0, 100, -10]).find(2), 1
    assert_equal FindKth.new([1, 0, 100, -10]).find(3), 100
    assert_equal FindKth.new([1, 2, 3]).find(1), 2
  end
end
