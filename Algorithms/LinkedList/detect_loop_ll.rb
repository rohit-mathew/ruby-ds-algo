# Find loop in LinkedList
# Time complexity : O(1)
# Space comlexity : O(n)

class Node
  attr_accessor :val, :next

  def initialize(val, next_node)
      @val = val
      @next = next_node
  end
end

def detect_loop head
  ptr1 = head
  ptr2 = head
  while (ptr1 != nil && ptr2 != nil && ptr2.next != nil)
    ptr1 = ptr1.next
    ptr2 = ptr2.next.next
    if (ptr1 == ptr2)
      return true
    end
  end
  return false
end