# Bottom-up mergesort of LinedList without the auxiliary space

Node = Struct.new(:value, :next)

def sort(list)
  return list if list.nil? || list.next.nil?

  size = 1
  result = list

  loop do
    merges = 0
    first = result
    prev_last = nil

    while first
      second = find_second(first, size)
      break if first == second

      head, last = merge(first, second, size)
      prev_last.next = head if prev_last
      prev_last = last
      first = last.next

      result = head if merges == 0
      merges += 1
    end

    return result if merges == 1 && last.next.nil?

    size *= 2
  end
end

def merge(first, second, size)
  fsize = size
  ssize = size
  head = nil
  tail = nil
  next_first = nil

  while (fsize != 0) || (second && ssize != 0)
    if ssize == 1 && next_first.nil?
      next_first = second.next
    end

    if fsize == 0
      tail = link(tail, second)
      second = second.next
      ssize -= 1
    elsif second.nil? || ssize == 0
      tail = link(tail, first)
      first = first.next
      fsize -= 1
    elsif first.value > second.value
      tail = link(tail, second)
      second = second.next
      ssize -= 1
    else
      tail = link(tail, first)
      first = first.next
      fsize -= 1
    end

    head = tail if head.nil?
  end

  tail.next = next_first
  [head, tail]
end

def link(tail, node)
  tail.next = node if tail
  node
end

def find_second(first, size)
  second = first
  size.times do
    break if second.next.nil?
    second = second.next
  end

  second
end

p sort(Node.new(2, Node.new(1, Node.new(0, Node.new(-1, Node.new(-22, nil))))))
