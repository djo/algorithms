def sort(array)
  n = array.size - 1
  n.times do |i|
    min = i
    (i + 1).upto(n) { |j| min = j if array[j] < array[min] }
    array[i], array[min] = array[min], array[i] if i != min
  end

  array
end
