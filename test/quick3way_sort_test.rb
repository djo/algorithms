require 'test_helper'

class Quick3wayTest < Test::Unit::TestCase
  def test_sort
    assert_equal Quick3way.new([1,2,3,4,5]).sort, [1,2,3,4,5]
    assert_equal Quick3way.new([5,4,3,2,1]).sort, [1,2,3,4,5]
    assert_equal Quick3way.new([10,0,30,-50,1]).sort, [-50,0,1,10,30]
  end
end
