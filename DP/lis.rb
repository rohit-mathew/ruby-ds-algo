def max arg1, arg2
  arg1 > arg2 ? arg1 : arg2
end

def evaluate array
  count = 1
  for i in 0..(array.count-2)
    if array[i] > array[i+1]
      count +=1
    else
      return 0
    end 
  end
  return count
end

# Brute Force solution - O(2^n) time complexity and constant space complexity
# Returns the length of the longest increasing subsequence
def find_lis_brute_force array
  max_count = -1
  # Generate all the possible sets. This is done by generating all binary numbers from 1 to 2^n.
  # The presence of a 0 in the binary number at a position will grant entry to the element at that position to the set
  for i in 1..((2**array.count) - 1)
    itr = array.count - 1
    set = []
    while i > 0
      if i%2 == 1
        set << array[itr]
      end
      i = i/2
      itr -= 1
    end
    max_count = max(max_count, evaluate(set))
  end
  return max_count
end

# DP solution - O(n^2) time complexity and O(n) space complexity
# Returns the length of the longest increasing subsequence
def lis array
  helper = Array.new(array.count, 1)
  for i in 1..(array.count - 1)
    for j in 0..i
      if array[j] < array[i]
        helper[i] = max((helper[j] + 1), helper[i])
      end
    end
  end 
  return helper.max
end

puts lis([10, 22, 9, 33, 21, 50, 41, 420, 80, 90])