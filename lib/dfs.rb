require 'set'

# Depth-first search to find paths in an undirected graph.
# The graph is represented as an adjacency list of Integers,
# see examples in test/dfs_test.rb
class DFS
  class Graph
    attr_accessor :size, :adj

    def initialize(size)
      @size = size
      @adj  = Array.new(size) { Set.new }
    end

    def add_edge(v, w)
      @adj[v].add(w)
      @adj[w].add(v)
    end
  end

  def initialize(graph, source)
    @graph = graph
    @source = source
    @edge_to = Array.new(graph.size, nil)
    @visited = Array.new(graph.size, false)
    search(source)
  end

  def path_to(v)
    return nil unless @visited[v]

    path = []
    w = v
    while w != @source
      path.push(w)
      w = @edge_to[w]
    end
    path.push(@source)

    path.reverse
  end

  private

  def search(v)
    @visited[v] = true
    @graph.adj[v].each do |w|
      next if @visited[w]
      @edge_to[w] = v
      search(w)
    end
  end
end
