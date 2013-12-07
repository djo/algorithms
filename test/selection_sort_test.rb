require 'test_helper'

class SelectionSortTest < Test::Unit::TestCase
  def test_sort
    assert_equal Selection.sort([1,2,3,4,5]), [1,2,3,4,5]
    assert_equal Selection.sort([5,4,3,2,1]), [1,2,3,4,5]
    assert_equal Selection.sort([10,0,30,-50,1]), [-50,0,1,10,30]
  end
end
