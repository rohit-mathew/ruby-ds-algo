class Node
  attr_accessor :val, :next

  def initialize(val, next_node)
      @val = val
      @next = next_node
  end
end

# A -> B -> C -> D -> E -> nil

# nil <- A <- B <- C  D -> E -> nil

def reverse head
  ptr = head
  next_node = nil
  prev_node = nil
  transfer = nil
  count = 0
  while ptr != nil
    if count < 3 
      next_node = ptr.next
      ptr.next = prev_node
      prev_node = ptr
      ptr = next_node
    else
      count = 0
      next_node = transfer 
    end
  end
  return prev_node
end

def ll_rev_k head k

end

m4 = Node.new(1, nil)
m3 = Node.new(2, m4)
m2 = Node.new(3, m3)
m1 = Node.new(4, m2)
m0 = Node.new(5, m1)

ptr = m0
while (ptr != nil) 
  puts ptr.val
  ptr = ptr.next
end
m1 = reverse(m0)
ptr = m1
while (ptr != nil) 
  puts ptr.val
  ptr = ptr.next
end
