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
def binary_search_rec(array, candidate, low, high) 
  if high < low
    return "Item not found" 
  end
  middle = (low + high)/2
  if candidate == array[middle]
    return "#{candidate} found!"
  else
    if candidate < array[middle]
      return binary_search_rec(array, candidate, low, middle - 1)
    else 
      return binary_search_rec(array, candidate, middle + 1, high)
    end
  end
end

def rotated_search array, candidate, low, high
  if high < low
    return false
  end
  middle = (high + low)/2
  if array[middle] == candidate
    return true
  elsif (array[middle] > candidate)
    if (candidate >= array[low])
      # Search candidate can be in the left sorted part of the array
      binary_search_rec(array, candidate, low, middle - 1)
    else
      rotated_search(array, candidate, middle +1, high)
    end
  else
    if (candidate <= array[high])
      #Search candidate can be in the right sorted part of the array
      binary_search_rec(array, candidate, middle + 1, high)
    else
      rotated_search(array, candidate, low, middle - 1)
    end
  end
end

arr = [5, 6, 7, 8, 9, 10, 1, 2, 3]
arr1 = [1,1,1,1,1,1,1,1,1,1]
puts rotated_search(arr1, 2, 0, arr1.length - 1)