require 'matrix'

def max arg1, arg2
  arg1 > arg2 ? arg1 : arg2
end
# Brute Force method
def lcs_brute str1, str2, ptr1, ptr2, matrix
  if (ptr1 < 0 || ptr2 < 0) 
    return 0 
  end
  if str1[ptr1] == str2[ptr2]
    return 1 + lcs(str1, str2, ptr1 - 1, ptr2 - 1, matrix)
  else
    return max(lcs(str1, str2, ptr1 - 1, ptr2, matrix), lcs(str1, str2, ptr1, ptr2 - 1, matrix))
  end
end

str1 = "ABCDGH"
str2 = "AEDFHR"
# Initialize a matrix of all zeros
matrix = Matrix.build(str1.length, str2.length) {|m, n| 0}
puts lcs(str1, str2, str1.length - 1, str2.length - 1, matrix)