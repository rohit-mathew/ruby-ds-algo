# Largest substring with no repeating characters

# /*
# Given a string, find the length of the longest substring without repeating characters.
# For example, given "abcabcbb", the answer is "abc", which the length is 3.
# "abacd", 4
# "aaaaaaaaabbbbbbbbbc", 2
# "abcbadacd"
# */

# Time Complexity : O(n)
# Space Complexity : O(1)

def lengthOfLongestSubstring s
    length = s.length
    
    if length <= 1 
        return length
    end
    
    start = 0    
    hash = Hash.new(0)
    max_window = 1
    
    for i in 0..(length - 1)
        curr = s[i]
        
        hash[curr] += 1
        
        if ((hash[curr] == 1) && (i - start + 1) > max_window)
            max_window = i - start + 1
        end
        
        # Compress the window to make sure the charcters are all unique
        while (hash[curr] > 1)
            first = s[start]
            hash[first] -= 1
            start += 1
        end
    end
    return max_window
end

str = "abcbadacd"
puts lengthOfLongestSubstring str