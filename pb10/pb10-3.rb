# SOLUTION 3. Executed Time: 0.383s

# Too easy..

require 'prime'

sum_primes = Prime.each(2_000_000).inject(:+)

puts "The sum of the primes below nb_max: #{sum_primes}"