# Least-significant-digit first string sort of fixed-length ASCII strings,
# linear-time sort in typical cases.
# See examples in test/lsd_test.rb
module LSD
  RADIX = 256

  def self.sort(strings, length)
    (length - 1).downto(0).each do |i|
      counts = Array.new(RADIX + 1, 0)

      # compute frequency counts
      strings.each do |string|
        ch = string[i].ord
        counts[ch + 1] += 1
      end

      # transform counts into indices
      (1..RADIX).each { |r| counts[r] += counts[r - 1] }

      # distribute it
      aux = Array.new(strings.length)
      strings.each do |string|
        ch = string[i].ord
        aux[counts[ch]] = string
        counts[ch] += 1
      end

      # and copy back
      strings = aux
    end

    strings
  end
end
