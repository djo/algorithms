require 'test_helper'

class UnionFindTest < Test::Unit::TestCase
  def test_connected
    uf = UnionFind.new(10)

    uf.union(1, 2)
    assert uf.connected?(1, 2)

    uf.union(3, 4)
    assert uf.connected?(1, 2)
    assert uf.connected?(3, 4)
    refute uf.connected?(1, 3)

    uf.union(1, 4)
    assert uf.connected?(1, 2)
    assert uf.connected?(3, 4)
    assert uf.connected?(1, 3)

    uf.union(5, 6)
    assert uf.connected?(1, 2)
    assert uf.connected?(3, 4)
    assert uf.connected?(1, 3)
    assert uf.connected?(5, 6)
    refute uf.connected?(1, 5)
  end
end
