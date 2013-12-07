require 'test_helper'

class GcdTest < Test::Unit::TestCase
  def test_gcd
    assert_equal CommonDivisor.gcd(50, 15), 5
    assert_equal CommonDivisor.gcd(15, 50), 5
    assert_equal CommonDivisor.gcd(15, 0), 15
    assert_equal CommonDivisor.gcd(0, 15), 15
  end
end
