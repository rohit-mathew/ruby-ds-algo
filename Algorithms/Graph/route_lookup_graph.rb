# Make a quick look up graph, where insertion of an edge to a graph can be expensive but getting the connectivity between 2 nodes is constant
# Space complexity = O(n^2)
# Time complexity of put = O(n^3)
# Time complexity of get = O(1)

class Graph
  attr_accessor :vertex_count, :routes_desc

  def initialize
    @vertex_count = 0
    @routes_desc = Hash.new(0)
  end

  def put array
    src = array[0]
    dest = array[1]
    todo = [src]
    done = Hash.new(0)
    @routes_desc[[src, dest]] = 1
    @routes_desc[[dest, src]] = 1
    while (!todo.empty?) 
      current = todo.shift
      # Get array of unvisited nodes that are connected to the current node
      connected_nodes = []
      @routes_desc.each do |k,v| 
        if ((k[0] == current) && (done[k[1]] == 0))
          connected_nodes << k[1]
        end
      end
      # For each unvisited node, connect it to all previously visited nodes
      connected_nodes.each do |i|
        done.keys.each do |j|
          @routes_desc[[i, j]] = 1
          @routes_desc[[j, i]] = 1
        end
        todo << i
      end
      done[current] = 1 
    end
  end

  def get array
    @routes_desc[array]
  end
end



array = [[0,1], [0,2], [1,2], [2,3], [3,3], [4,5]]
graph = Graph.new
array.each do |itr|
  graph.put(itr)
end
puts graph.get([0,3])