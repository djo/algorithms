# Max-oriented Priority Queue based on the binary heap,
# it requires ~lgN compares for insert and ~2lg N compares for remove the maximum,
# see test/priority_queue_test.rb
class PriorityQueue
  def initialize
    @pq = [nil]
  end

  def insert(key)
    @pq << key
    swim(@pq.length - 1)
  end

  def delete_max
    return nil     if length == 0
    return @pq.pop if length == 1

    max = @pq[1]
    @pq[1] = @pq.pop
    sink(1)
    max
  end

  def length
    @pq.length - 1
  end

  private

  def swim(k)
    while (k > 1) && (@pq[k/2] < @pq[k])
      @pq[k/2], @pq[k] = @pq[k], @pq[k/2]
      k /= 2
    end
  end

  def sink(k)
    while (2*k <= length)
      j = 2*k
      j += 1 if (j < length) && (@pq[j] < @pq[j + 1])
      break if @pq[k] >= @pq[j]
      @pq[k], @pq[j] = @pq[j], @pq[k]
      k = j
    end
  end
end
