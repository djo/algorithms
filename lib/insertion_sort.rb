# Insertion sort algorithm,
# uses N^2/4 compares and N^2/4 exchanges to sort a randomly ordered array,
# see test/insertion_sort_test.rb
class Insertion
  def initialize(array)
    @array = array
  end

  def sort
    1.upto(@array.size - 1) do |i|
      j = i
      while j > 0 && @array[j] < @array[j - 1]
        @array[j], @array[j - 1] = @array[j - 1], @array[j]
        j -= 1
      end
    end

    @array
  end  
end

