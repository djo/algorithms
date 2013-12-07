require 'test_helper'

class ExpressionsTest < Test::Unit::TestCase
  def test_evaluate
    assert_equal Expressions.new("(1+2)").evaluate, 3
    assert_equal Expressions.new("(1+(3*(2+2)))").evaluate, 13
  end
end
