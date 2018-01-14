class TreeNode
  attr_accessor :left, :right, :val

  def initialize val 
    @val = val
  end
end



root = TreeNode.new(1)
root.left = TreeNode.new(2)
root.right = TreeNode.new(3)
root.left.left = TreeNode.new(4)
root.left.right = TreeNode.new(5)
root.left.left.left = TreeNode.new(6)
root.left.left.right = TreeNode.new(7)

puts max_depth_bt root, 0