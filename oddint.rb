# Given an array of integers, find the one that appears an odd number of times
def find_it(seq)
  # Iterate through seq
  # Create hash seq_value => number_times_seen
  # return seq_value of number_times_seen == odd
  seen = {}
  seq.each do |n|
    if not seen.include?(n)
      seen[n] = 1
    else
      seen[n] += 1
    end
  end

  seen.each do |k, v|
    if v % 2 == 1
      return k
    end
  end
end

# top rated code wars version
def find_it_top(seq)
  seq.detect { |n| seq.count(n).odd? }
end

def tests
  puts find_it([20,1,-1,2,-2,3,3,5,5,1,2,4,20,4,-1,-2,5])
  puts find_it([1,1,2,-2,5,2,4,4,-1,-2,5])
  puts find_it([20,1,1,2,2,3,3,5,5,4,20,4,5])
  puts find_it([10])
  puts find_it([1,1,1,1,1,1,10,1,1,1,1])

  puts find_it_top([20,1,-1,2,-2,3,3,5,5,1,2,4,20,4,-1,-2,5])
  puts find_it_top([1,1,2,-2,5,2,4,4,-1,-2,5])
  puts find_it_top([20,1,1,2,2,3,3,5,5,4,20,4,5])
  puts find_it_top([10])
  puts find_it_top([1,1,1,1,1,1,10,1,1,1,1])
end

tests