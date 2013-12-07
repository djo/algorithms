require 'test_helper'

class PriorityQueueTest < Test::Unit::TestCase
  def test_priority_queue
    pq = PriorityQueue.new
    pq.insert(-20)
    pq.insert(10)
    pq.insert(100)
    pq.insert(-50)
    assert_equal pq.delete_max, 100
    assert_equal pq.delete_max, 10
    assert_equal pq.delete_max, -20
    assert_equal pq.delete_max, -50
    assert_equal pq.delete_max, nil
  end
end
