# Binary search runs in O (log n) time
# Iterative binary search
def binary_serach_itr(array, candidate)
  low = 0
  high = array.length - 1
  while !(low > high) do
    middle = (low + high)/2
    if candidate > array[middle]
      low = middle + 1
    elsif candidate < array[middle]
      high = middle - 1
    else
      return "#{candidate} found"
    end
  end
  return "#{candidate} not found in given array"
end

# Recursive binary search
def binary_search_rec(array, candidate) 
  if array.length == 0
    return "Item not found" 
  end
  low = 0
  high = array.length - 1
  middle = (low + high)/2
  if candidate == array[middle]
    return "#{candidate} found!"
  else
    if candidate < array[middle]
      return binary_search_helper(array[low, middle - 1], candidate)
    else 
      return binary_search_helper(array[middle + 1, high], candidate)
    end
  end
end

puts binary_serach_itr([1,2,3,4,5,6,7,8], 8)
# 8 found