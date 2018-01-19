# Smallest string  window containing all characters of a pattern

# Time complexity O(n)
# Space complexity O(1)

def find_pattern str, pat
  hash_pat = Hash.new(0)
  hash_str = Hash.new(0)

  str_len = str.lenth
  pat_len = pat.length

  min_window = -1 # Minimum window (incl) size with all elements in it

  start = 0

  count = 0 # Count of the charcters in matched pattern

  pat.split("").each do |itr|
    hash_pat[itr] += 1
  end

  for last in 0..(str.length - 1)
    curr = str[end]
    hash_str[curr] += 1

    if hash_pat[curr] != 0 && hash_pat[curr] > hash_str[curr] 
      couter += 1;
    end

    if counter == pat_len
      #Compress window until we have the minimum window possible
      loop
        start_c = str[start]
        if hash_pat[start_c] == 0 || hash_pat[start_c] < hash_str[start_c]
          start += 1
        end
      end

      if (last - start) < min_window
        min_window = (last - start)
      end
    end
  end
  return min_window
end

string = "this is a test string"
pattern = "tist"

find_pattern string, pattern