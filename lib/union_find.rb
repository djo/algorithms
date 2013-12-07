# Union-find implementation (weighted quick-union)
class UF
  attr_accessor :ids

  def initialize(count)
    @ids = [*0..count-1]
    @sizes = Array.new(count, 1)
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

uf = UF.new(10)
p uf.ids
uf.union(1, 2)
p uf.ids
uf.union(3, 4)
uf.union(1, 4)
uf.union(5, 6)
p uf.ids
