# Compute the greatest common divisor of two nonnegative integers p and q
def gcd(p, q)
  return p if q == 0
  r = p % q
  gcd(q, r)
end

p gcd(50, 15) #=> 5
p gcd(15, 50) #=> 5
