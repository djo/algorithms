# Computes the greatest common divisor of two nonnegative integers p and q,
# see test/gcd_test.rb
def gcd(p, q)
  return p if q == 0
  r = p % q
  gcd(q, r)
end
