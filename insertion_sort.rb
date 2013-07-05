def sort(array)
  1.upto(array.size - 1) do |i|
    j = i
    while j > 0 && array[j] < array[j - 1]
      array[j], array[j - 1] = array[j - 1], array[j]
      j -= 1
    end
  end

  array
end
