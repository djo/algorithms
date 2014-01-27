# Checks if a binary tree is balanced in O(n) time and O(height) space,
# see examples in test/btree_test.rb
class BTree
  Node = Struct.new(:left, :right)

  def initialize(node)
    @height = height(node)
  end

  def balanced?
    @height != -1
  end

  private

  def height(node)
    return 0  if node.nil?

    left_height = height(node.left)
    return -1 if left_height == -1

    right_height = height(node.right)
    return -1 if right_height == -1

    diff = left_height - right_height
    return -1 if diff.abs > 1

    [left_height, right_height].max + 1
  end
end
