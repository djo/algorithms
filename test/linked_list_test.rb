require 'test_helper'

class LinkedListTest < Test::Unit::TestCase
  Node = LinkedList::Node

  def test_prepending_elements
    node = Node.new(5, nil)
    5.times { |i| node = Node.new(i, node) }
    assert_equal to_a(node), [4,3,2,1,0,5]
  end

  def test_appending_elements
    node = Node.new(5, nil)
    last = node
    5.times do |i|
      last.next = Node.new(i, nil)
      last = last.next
    end
    assert_equal to_a(node), [5, 0, 1, 2, 3, 4]
  end

  def test_reverse
    node = Node.new(0, Node.new(1, Node.new(2, Node.new(3, nil))))
    assert_equal to_a(node), [0,1,2,3]
    reversed = LinkedList.reverse(node)
    assert_equal to_a(reversed), [3,2,1,0]
  end

  private

  def to_a(first)
    array = []
    while (first != nil) do
      array << first.value
      first = first.next
    end
    array
  end
end
