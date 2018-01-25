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
    source = array[0]
    dest = array[1]
    to_do = [source]
    done = []
    if !routes_desc.has_key?(source)
      vertex_count += 1
    end
    if !routes_desc.has_key?(dest)
      vertex_count += 1
    end
    routes_desc[[source, dest]] == 1
    routes_desc[[dest, source]] == 1
    while !todo.is_empty?
      current = todo.pop
      hash_select = routes_desc.select {}
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