require 'test_helper'

class MergeSortBuTest < Test::Unit::TestCase
  Node = MergeSortBu::Node

  def test_sort
    list = sort(Node.new(1, Node.new(2, Node.new(3, Node.new(4, nil)))))
    assert_equal to_a(sort(list)), [1,2,3,4]

    list = sort(Node.new(4, Node.new(3, Node.new(2, Node.new(1, nil)))))
    assert_equal to_a(sort(list)), [1,2,3,4]

    list = sort(Node.new(50, Node.new(0, Node.new(-20, Node.new(1, nil)))))
    assert_equal to_a(sort(list)), [-20,0,1,50]
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

  def sort(list)
    MergeSortBu.new.sort(list)
  end
end
