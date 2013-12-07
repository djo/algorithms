# Work with a linked list structure,
# see examples in test/linked_list_test.rb
module LinkedList
  Node = Struct.new(:value, :next)

  # Reverses a linked list in the iterative case
  def self.reverse(first)
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
end
