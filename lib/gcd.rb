# Computes the greatest common divisor of two nonnegative integers p and q,
# see test/gcd_test.rb
module CommonDivisor
  def self.gcd(p, q)
    return p if q == 0
    r = p % q
    gcd(q, r)
  end
end
