require 'set'

class GraphNode
    attr_reader :value, :neighbors

    def initialize(value)
        @value = value
        @neighbors = []
    end

    def neighbors=(array)
        @neighbors = array
    end
    
end

def bfs(starting_node, target_value)
    queue = starting_node.neighbors
    set = Set.new
    queue.each do |node|
        return node if node.value == target_value
        break if set.include?(node)
        queue += node.neighbors
    end
    nil
end

a = GraphNode.new('a')
b = GraphNode.new('b')
c = GraphNode.new('c')
d = GraphNode.new('d')
e = GraphNode.new('e')
f = GraphNode.new('f')
a.neighbors = [b, c, e]
c.neighbors = [b, d]
e.neighbors = [a]
f.neighbors = [e]

p bfs(a, "b")

p bfs(a, "f")