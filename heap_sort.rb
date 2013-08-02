class Heap
  def initialize(array)
    @pq = array
    n = @pq.length
    (n / 2).downto(1) { |k| sink(k, n) }
  end

  def sort
    n = @pq.length
    while n > 1
      exch(1, n)
      n -= 1
      sink(1, n)
    end

    @pq
  end

  private

  def sink(k, n)
    while 2*k <= n
      i = 2*k
      i += 1 if (i < n) && less(i, i + 1)
      break if !less(k, i)
      exch(k, i)
      k = i
    end
  end

  def exch(i, j)
    @pq[i-1], @pq[j-1] = @pq[j-1], @pq[i-1]
  end

  def less(i, j)
    @pq[i-1] < @pq[j-1]
  end
end

p Heap.new([10, 2, 11, -100, 100, 0, 0]).sort
