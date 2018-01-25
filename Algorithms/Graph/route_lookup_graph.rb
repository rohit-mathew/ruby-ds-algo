class Graph
  attr_accessor :adj_list_arr, :vertex_count, :routes_desc

  def initialize
    @vertex_count = 0
    @routes_desc = Hash.new 
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
  end
end



array = [[0,1], [0,2], [1,2], [2,3], [3,3]]
graph = Graph.new(4, array)
puts graph.dfs(0, 3, Hash.new(0))