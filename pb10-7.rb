def eratosthenes(n)
  nums = [nil, nil, *2..n]
  (2..Math.sqrt(n)).each do |i|
    (i**2..n).step(i){|m| nums[m] = nil}  if nums[i]
  end
  nums.compact
end
 
p eratosthenes(2000000).inject { |sum, n| sum + n }

#As a refinement, it is sufficient to mark the numbers in step 3 starting
# from p2, as all the smaller multiples of p will have already been marked
# at that point.