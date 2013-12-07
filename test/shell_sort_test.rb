require 'test_helper'

class ShellSortTest < Test::Unit::TestCase
  def test_sort
    assert_equal Shell.sort([1,2,3,4,5]), [1,2,3,4,5]
    assert_equal Shell.sort([5,4,3,2,1]), [1,2,3,4,5]
    assert_equal Shell.sort([10,0,30,-50,1]), [-50,0,1,10,30]
  end
end
