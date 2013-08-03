# Find the k-th smallest values in the array
def find(array, k)
  raise 'out of bounds' if k >= array.size
  lo = 0
  hi = array.length - 1

  while lo < hi
    j = partition(array, lo, hi)
    if j < k
      lo = j + 1
    elsif j > k
      hi = j - 1
    else
      return array[k]
    end
  end

  return array[k]
end

def partition(array, lo, hi)
  pivot = array[lo]
  i = lo + 1
  j = hi

  loop do
    i += 1 while (i != hi) && (pivot > array[i])
    j -= 1 while (j != lo) && (pivot < array[j])
    break if i >= j
    array[i], array[j] = array[j], array[i]
  end

  array[lo], array[j] = array[j], array[lo]
  j
end

p find([5, 12, 1, 0, 100, -10], 2)
