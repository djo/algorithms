require 'test/unit'
require_relative '../lib/gcd'

class GcdTest < Test::Unit::TestCase
  def test_computing_the_gcd
    assert_equal gcd(50, 15), 5
    assert_equal gcd(15, 50), 5
    assert_equal gcd(15, 0), 15
    assert_equal gcd(0, 15), 15
  end
end
