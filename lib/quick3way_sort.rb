# Quick 3-way sort version,
# to protect against the worst case an array should be shuffled before,
# see examples in test/quick3way_sort_test.rb
class Quick3way
  def initialize(array)
    @array = array
  end

  def sort
    sort3way(@array, 0, @array.length - 1)
    @array
  end

  private

  def sort3way(array, lo, hi)
    return if lo >= hi
    pivot = array[lo]
    gt = hi
    lt = lo
    i = lo + 1

    while i <= gt
      if array[i] < pivot
        array[i], array[lt] = array[lt], array[i]
        lt += 1
        i += 1
      elsif array[i] > pivot
        array[i], array[gt] = array[gt], array[i]
        gt -= 1
      else
        i += 1
      end
    end

    sort3way(array, lo, lt - 1)
    sort3way(array, gt + 1, hi)
  end
end
