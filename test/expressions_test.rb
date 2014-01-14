require 'test_helper'

class ExpressionsTest < Test::Unit::TestCase
  def test_evaluate
    assert_equal Expressions.evaluate("(1+2)"), 3
    assert_equal Expressions.evaluate("(1+(3*(2+2)))"), 13
  end
end
