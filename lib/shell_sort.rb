def sort(array)
  gap = 1
  gap = 3 * gap + 1 while gap < array.size / 3

  while gap > 0
    gap.upto(array.size - 1) do |i|
      j = i
      while j > 0 && array[j] < array[j - gap]
        array[j], array[j - gap] = array[j - gap], array[j]
        j -= gap
      end
    end

    gap /= 3
  end

  array
end
