require 'test_helper'

class BTreeTest < Test::Unit::TestCase
  Node = BTree::Node

  def test_balanced
    assert_equal BTree.new(nil).balanced?, true
    assert_equal BTree.new(Node.new).balanced?, true

    tree = Node.new(Node.new, nil)
    assert_equal BTree.new(tree).balanced?, true

    tree = Node.new(Node.new, Node.new)
    assert_equal BTree.new(tree).balanced?, true

    tree = Node.new(Node.new(Node.new, nil), nil)
    assert_equal BTree.new(tree).balanced?, false

    tree = Node.new(Node.new(Node.new, nil), Node.new)
    assert_equal BTree.new(tree).balanced?, true

    tree = Node.new(Node.new(Node.new, nil), Node.new(nil, Node.new))
    assert_equal BTree.new(tree).balanced?, true

    tree = Node.new(Node.new(Node.new(Node.new, nil), nil), Node.new)
    assert_equal BTree.new(tree).balanced?, false
  end
end

