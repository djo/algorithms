require 'set'

# Finding a directed cycle in a directed graph.
# The graph is represented as an adjacency list of Integers,
# see examples in test/directed_cycle_test.rb
class DirectedCycle
  class Digraph
    attr_accessor :adj, :size

    def initialize(size)
      @size = size
      @adj = []
      size.times { @adj.push(Set.new) }
    end

    def add_edge(v, w)
      @adj[v].add(w)
    end
  end

  def initialize(graph)
    @graph = graph
    @visited = [false] * graph.size
    @on_stack = [false] * graph.size
    @edge_to = [nil] * graph.size
    @cycle = []
    graph.size.times do |v|
      dfs(v) unless @visited[v]
    end
  end

  def has_cycle?
    @cycle.any?
  end

  def cycle
    @cycle
  end

  private

  def dfs(v)
    @visited[v] = true
    @on_stack[v] = true

    @graph.adj[v].each do |w|
      return if has_cycle?

      if @visited[w]
        track_cycle(v, w) if @on_stack[w]
      else
        @edge_to[w] = v
        dfs(w)  
      end
    end

    @on_stack[v] = false
  end

  def track_cycle(from, to)
    v = from
    while v != to
      @cycle.push(v)
      v = @edge_to[v]
    end
    @cycle.push(to)
    @cycle.push(from)
    @cycle.reverse!
  end
end
