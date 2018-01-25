class TreeNode
  attr_accessor :left, :right, :val

  def initialize val 
    @val = val
  end
end

class Result
  attr_accessor :val
end

def max a, b
  return a > b ? a : b
end

def find_max_sum_path root, res
  if root == nil 
    return 0
  end

  # Max path in left and right subtree ending in current node
  left_sum = find_max_sum_path(root.left, res) 
  right_sum = find_max_sum_path(root.right, res) 

  # Max of above and root alone, this will be returned for recursion
  single_sum = max(max((left_sum + root.val), (right_sum + root.val)), root.val)
  puts "Current root : #{root.val} and single_sum : #{single_sum}"

  # When current node's ancestors are not part of the solution 
  total_sum = max(single_sum, (root.val + left_sum + right_sum))

  # Store best solution so far separately 
  res.val = max(total_sum, res.val)

  puts "Current root : #{root.val} and total_sum : #{total_sum} \n\n"
  return single_sum
end

res = Result.new
res.val = -99999999999999
root = TreeNode.new(10)
root.left = TreeNode.new(2)
root.left.left = TreeNode.new(20)
root.left.right = TreeNode.new(1)
root.right = TreeNode.new(10)
root.right.right = TreeNode.new(-25)
root.right.right.left = TreeNode.new(3)
root.right.right.right = TreeNode.new(4)

puts max(find_max_sum_path(root, res), res.val)