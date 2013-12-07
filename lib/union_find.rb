# Union-find algorithm (weighted quick-union implementation),
# the worst case order of growth is log N,
# see examples in test/union_find_test.rb
class UnionFind
  attr_accessor :ids

  def initialize(count)
    @ids = [*0..count-1]
    @sizes = Array.new(count, 1)
  end

  def connected?(id1, id2)
    find(id1) == find(id2)
  end

  def find(id)
    id = @ids[id] while id != @ids[id]
    id
  end

  def union(id1, id2)
    root1 = find(id1)
    root2 = find(id2)
    return if root1 == root2

    if @sizes[root1] < @sizes[root2]
      @ids[root1] = root2
      @sizes[root2] += @sizes[root1]
    else
      @ids[root2] = root1
      @sizes[root1] += @sizes[root2]
    end
  end
end
