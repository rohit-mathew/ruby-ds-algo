class Graph
  attr_accessor :adj_list_arr, :vertex_count, :routes_desc

  def initialize
    @vertex_count = 0
    @routes_desc = Hash.new 
  end

  def dfs root, dest, visited
    puts "Root : #{root} and dest : #{dest}"
    if root == dest 
      return true
    end
    visited[root] = 1
    for i in 0..(vertex_count - 1)
      if @adj_hash[[root, i]] == 1
        if visited[i] == 0
          if dfs(i, dest, visited) == true
            return true
          end
        end
      end
    end
    return false
  end

  def put array

  end

  def get array
  end
end



array = [[0,1], [0,2], [1,2], [2,3], [3,3]]
graph = Graph.new(4, array)
puts graph.dfs(0, 3, Hash.new(0))