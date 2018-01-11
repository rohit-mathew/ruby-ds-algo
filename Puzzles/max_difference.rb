# Maximum Difference Problem
# Find the maximum difference between two elements in an array such that the first element is earlier than the second element
# Time Complexity O(n)
# Space Complexity O(1)

def max_difference array
  smallest = array[0]
  max_difference = 0
  array.each {
    |element|
    if ((element - smallest) > max_difference)
      max_difference = element - smallest
    end
    if (element < smallest)
      smallest = element
    end
  }
  return max_difference
end

puts max_difference([2, 3, 10, 6, 4, 8, 16])