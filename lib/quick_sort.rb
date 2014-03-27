# The basic Quicksort algorithm,
# to protect against the worst case an array should be shuffled before,
# see examples in test/quick_sort_test.rb
class Quick
  def initialize(array)
    @array = array
  end

  def sort
    quicksort(@array)
  end

  private

  def quicksort(a)
    return a if a.size <=1
    pivot = a.shift
    less, more = a.partition{|y| y < pivot}
    quicksort(less) + [pivot] + quicksort(more)
  end

end
