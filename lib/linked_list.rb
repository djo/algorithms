# Work with the Linked List structure,
# see examples in test/linked_list_test.rb
module LinkedList
  Node = Struct.new(:value, :next)

  # Reverses a linked list in the iterative case
  def self.reverse(first)
    node = first
    prev = nil

    while node
      second = node.next
      node.next = prev
      prev = node
      node = second
    end

    prev
  end

  # Deletes duplicates from the list using a hash map, runs in O(n) time
  def self.delete_dups(node)
    map = {}
    prev = nil

    while node
      if map[node.value]
        prev.next = node.next
      else
        map[node.value] = true
        prev = node
      end

      node = node.next
    end
  end

  # Detects if the linked list has a loop
  def self.has_loop?(head)
    slow = head
    fast = head
    while fast && fast.next
      slow = slow.next
      fast = fast.next.next
      return true if slow == fast
    end
    return false
  end
end
