# Merge Sort requires O n * log n time and O (n) space 
# Merges two already sorted arrays
def merge(array1, array2)
  ptr1 = 0
  ptr2 = 0
  high1 = array1.length - 1  
  high2 = array2.length - 1  
  array_final = []
  while (ptr1 <= high1) && (ptr2 <= high2) do
    if (array1[ptr1] < array2[ptr2])
      array_final << array1[ptr1]
      ptr1 += 1
    else
      array_final << array2[ptr2]
      ptr2 += 1
    end
  end
  if ptr1 <= high1
    while (ptr1 <= high1) do
      array_final << array1[ptr1]
      ptr1 += 1
    end
  elsif ptr2 <= high2
    while (ptr2 <= high2) do
      array_final << array2[ptr2]
      ptr2 += 1
    end
  end
  return array_final
end

# Helper function for recursion
def mergesort(array)
  if array.count <= 1
    return array
  end 
  middle = array.count/2 
  return merge(mergesort(array[0, middle]), mergesort(array[middle, array.count]))
end

puts mergesort([9,8,7,6,5,4,3,2,1])
# 1 2 3 4 5 6 7 8 9