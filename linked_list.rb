Node = Struct.new(:value, :next)

# Prepend new elements
node = Node.new(11, nil)
10.times { |i| node = Node.new(i, node) }

# Append new elements
node = Node.new(0, nil)
last = node
10.times { |i| last.next = Node.new(i, nil); last = last.next }

# Deletes the kth element in a linked list
def delete(first, index)
  return nil if index == 0

  node = first
  (index - 1).times { node = node.next }
  node.next = nil

  first
end

# Reverses the list in the iterative case
def reverse_i(first)
  node = first
  prev = nil

  while node do
    second = node.next
    node.next = prev
    prev = node
    node = second
  end

  prev
end
