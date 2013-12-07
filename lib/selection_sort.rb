# The Selection sort uses ~N^2 compares and N exchanges to sort an array,
# see examples in test/selection_sort_test.rb
module Selection
  def self.sort(array)
    n = array.size - 1
    n.times do |i|
      min = i
      (i + 1).upto(n) do |j|
        min = j if array[j] < array[min]
      end
      if i != min
        array[i], array[min] = array[min], array[i]
      end
    end

    array
  end
end
