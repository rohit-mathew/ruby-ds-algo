require 'pry'

def knap index, weights, values, w, hash
  if (w < 0 || index >= weights.length)
    return 0
  end
  if hash[[index, w]] != -1
    return hash[[index, w]]
  else
    weight = weights[index]
    value = values[index] 
    finalSoln = -1
    
    if weight > w
      finalSoln =  knap(index+1, weights, values, w, hash)
    else

      soln1 = value + knap(index+1, weights, values, (w-weight), hash)
      soln2 = knap(index+1, weights, values, w, hash)

      finalSoln = soln1 >= soln2 ? soln1 : soln2
    end
    hash[[index, w]] = finalSoln
    return hash[[index, w]]
  end
end

values = [60, 100, 120]
weights = [10, 20, 30]
W = 50
hash = Hash.new(-1)

# puts knap(0, weights, values, W, hash)

def change hash, n
  if n > 0
    hash["New Stuff #{n}"] = 1
    change hash, n - 1
  end
end

hash1 = Hash.new(-1)
hash1["Old Stuff"] = 0
puts hash1
change hash1, 5
puts hash1

