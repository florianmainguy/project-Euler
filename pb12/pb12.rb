# What is the value of the first triangle number to have over five
# hundred divisors?

# Execution Time: 12.021s

# Except the square root of its value, all triangle numbers' divisors are
# paired. So we just need to count all the divisors of new generated triangle
# numbers up to their square root, and stop when we get to 250.

triangle_nbs = [nil, 1]
divisors = []
nb_divisors = 500

while divisors.length < (nb_divisors/2.0).round   # 'round' in case of odd
  divisors = []									  #  number of divisors
  triangle_nbs << (triangle_nbs.last + triangle_nbs.length) 
  (1..Math.sqrt(triangle_nbs.last)).each do |n|
    divisors << n if triangle_nbs.last % n == 0
  end
end

puts "More than 500 divisors: " + triangle_nbs.last.to_s