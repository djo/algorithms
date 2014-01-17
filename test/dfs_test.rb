require 'test_helper'

class DFSTest < Test::Unit::TestCase
  def test_path_to
    graph = DFS::Graph.new(10)
    graph.add_edge(0, 1)
    graph.add_edge(0, 2)
    graph.add_edge(0, 3)
    graph.add_edge(1, 0)
    graph.add_edge(2, 4)
    graph.add_edge(2, 5)
    graph.add_edge(8, 9)

    dfs = DFS.new(graph, 0)
    assert_equal dfs.path_to(1), [0, 1]
    assert_equal dfs.path_to(3), [0, 3]
    assert_equal dfs.path_to(5), [0, 2, 5]

    dfs = DFS.new(graph, 3)
    assert_equal dfs.path_to(0), [3, 0]
    assert_equal dfs.path_to(5), [3, 0, 2, 5]
    assert_equal dfs.path_to(8), nil
  end
end
