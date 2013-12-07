# The basic Quicksort algorithm,
# to protect against the worst case an array should be shuffled before,
# see examples in test/quick_sort_test.rb
class Quick
  def initialize(array)
    @array = array
  end

  def sort
    quicksort(@array, 0, @array.length - 1)
    @array
  end

  private

  def quicksort(array, lo, hi)
    return if lo >= hi
    j = partition(array, lo, hi)
    quicksort(array, lo, j - 1)
    quicksort(array, j + 1, hi)
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
end
