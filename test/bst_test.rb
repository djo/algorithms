require 'test_helper'

class BSTTest < Test::Unit::TestCase
  Node = BST::Node

  def test_find_next
    #      4
    #     / \
    #    1   5
    #   / \
    #  0   3
    #     /
    #   2
    n4 = Node.new(4, nil, nil, nil)
    n5 = Node.new(5, n4, nil, nil)
    n1 = Node.new(1, n4, nil, nil)
    n4.left = n1
    n4.right = n5
    n0 = Node.new(0, n1, nil, nil)
    n1.left = n0
    n3 = Node.new(3, n1, nil, nil)
    n1.right = n3
    n2 = Node.new(2, n3, nil, nil)
    n3.left = n2

    assert_equal BST.find_next(n0).value, 1
    assert_equal BST.find_next(n1).value, 2
    assert_equal BST.find_next(n2).value, 3
    assert_equal BST.find_next(n3).value, 4
    assert_equal BST.find_next(n4).value, 5
    assert_equal BST.find_next(n5), nil
  end
end
