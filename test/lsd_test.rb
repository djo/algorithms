require 'test_helper'

class LSDTest < Test::Unit::TestCase
  def test_sort
    assert_equal LSD.sort(['b', 'a', 'c'], 1), ['a', 'b', 'c']
    assert_equal LSD.sort(['ba', 'ab', 'bc', 'cc'], 2), ['ab', 'ba', 'bc', 'cc']
    assert_equal LSD.sort(['bbc', 'aca', 'cbc'], 3), ['aca', 'bbc', 'cbc']
  end
end
