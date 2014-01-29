module BST
  Node = Struct.new(:value, :parent, :left, :right)

  # Finds the 'next' node (in-order successor) of a given node in a binary search tree,
  # see examples in test/bst_test.rb
  def self.find_next(node)
    return nil if node.nil?

    # find the left most node in the right subtree
    if node.right
      n = node.right
      n = n.left while n.left
      return n
    end

    # otherwise go up until we're on the left side
    n = node
    p = n.parent
    while p && p.left != n
      n = p
      p = p.parent
    end

    p
  end
end
