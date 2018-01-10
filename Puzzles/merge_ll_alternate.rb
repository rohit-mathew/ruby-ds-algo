# Merge two LL in alternate positions
# Time complexity : O(1)
# Space comlexity : O(n)

class Node
  attr_accessor :val, :next

  def initialize(val, next_node)
      @val = val
      @next = next_node
  end
end

def merge_ll_alternate list1_head, list2_head
  ptr1 = list1_head
  ptr2 = list2_head

  while ((ptr1 != nil) && (ptr2 != nil)) do
    temp1 = ptr1.next 
    temp2 = ptr2.next 

    ptr1.next = ptr2
    ptr2.next = temp1

    ptr2 = temp2
    ptr1 = temp1
  end
  return list1_head
end

# n4 = Node.new(4, nil)
n3 = Node.new(3, nil)
n2 = Node.new(2, n3)
n1 = Node.new(1, n2)

m4 = Node.new(14, nil)
m3 = Node.new(13, m4)
m2 = Node.new(12, m3)
m1 = Node.new(11, m2)
m0 = Node.new(10, m1)
mm1 = Node.new(9, m0)

merge_ll_alternate(mm1, n1)
ptr = mm1
while ptr != nil
  puts ptr.val
  ptr = ptr.next
end