# Summation of primes

# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17
# Find the sum of all the primes below two million

# SOLUTION 5. Executed Time: 0.383s

require 'prime'

sum_primes = Prime.each(2000000).inject(:+)

puts "The sum of the primes below nb_max: #{sum_primes}"