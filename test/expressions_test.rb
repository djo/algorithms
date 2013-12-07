require 'test/unit'
require_relative '../lib/expressions'

class ExpressionsTest < Test::Unit::TestCase
  def test_evaluate
    assert_equal evaluate("(1+2)"), 3
    assert_equal evaluate("(1+(3*(2+2)))"), 13
  end
end
