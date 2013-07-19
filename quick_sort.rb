# Quick sort version where the array should be shuffled before
# to protect against the worst case
def sort(array, lo, hi)
  return if lo >= hi
  j = partition(array, lo, hi)
  sort(array, lo, j - 1)
  sort(array, j + 1, hi)
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

array = [5, 12, 1, 0, 100, -10]
sort(array, 0, array.length - 1)
p array
