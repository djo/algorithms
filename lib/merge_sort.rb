# Top-down Mergesort algorithm based on not optimal ruby collection methods
# just to show divide-and-conquer paradigm.
def sort(array)
  return array if array.length < 2
  left, right = halves(array)
  merge(sort(left), sort(right))
end

def halves(array)
  middle = array.length / 2
  [array[0..(middle - 1)], array[middle..-1]]
end

def merge(first, second)
  result = []

  while first.any? || second.any?
    if first.empty?
      result << second.shift
    elsif second.empty?
      result << first.shift
    elsif first[0] > second[0]
      result << second.shift
    else
      result << first.shift
    end
  end

  result
end
