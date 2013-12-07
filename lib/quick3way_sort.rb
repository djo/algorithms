# Quick 3-way sort version where the array should be shuffled before
# to protect against the worst case
def sort(array, lo, hi)
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

  sort(array, lo, lt - 1)
  sort(array, gt + 1, hi)
end

array = [5, 12, 1, 0, 100, -10]
sort(array, 0, array.length - 1)
p array
