# Find the k-th smallest value in the array,
# see test/find_kth_test.rb
class FindKth
  def initialize(array)
    @array = array
  end

  def find(k)
    raise 'out of bounds' if k >= @array.size
    array = @array.dup
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

  private

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
