require 'test_helper'

class DirectedCycleTest < Test::Unit::TestCase
  def test_cycle
    graph = DirectedCycle::Digraph.new(4)
    graph.add_edge(0, 1)
    graph.add_edge(1, 2)
    graph.add_edge(2, 3)

    dc = DirectedCycle.new(graph)
    assert_equal dc.has_cycle?, false

    graph = DirectedCycle::Digraph.new(4)
    graph.add_edge(0, 1)
    graph.add_edge(1, 2)
    graph.add_edge(2, 3)
    graph.add_edge(3, 1)

    dc = DirectedCycle.new(graph)
    assert_equal dc.has_cycle?, true
    assert_equal dc.cycle, [3, 1, 2, 3]
  end
end
