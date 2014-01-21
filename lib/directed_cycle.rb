require 'set'

# Finding a directed cycle in a directed graph.
# The graph is represented as an adjacency list of Integers,
# see examples in test/directed_cycle_test.rb
class DirectedCycle
  class Digraph
    attr_accessor :adj, :size

    def initialize(size)
      @size = size
      @adj  = Array.new(size) { Set.new }
    end

    def add_edge(v, w)
      @adj[v].add(w)
    end
  end

  def initialize(graph)
    @graph    = graph
    @cycle    = []
    @visited  = Array.new(graph.size, false)
    @on_stack = Array.new(graph.size, false)
    @edge_to  = Array.new(graph.size, nil)

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
