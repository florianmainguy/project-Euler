# Summation of primes

# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17
# Find the sum of all the primes below two million

# SOLUTION 4. Executed Time: 0.443s

# Implementation of eratosthenes' sieve
#
# Instead of taking a number and checking if it's a prime, we take a prime and 
# eliminate all his multiples. The next number following the prime that has not been
# eliminating is the next prime. We can then loop this two operations till we get
# all the primes of the number N.
#
# Optimization 1: stop eliminating multiples when we arrived at a prime p where
#    			  p**2 > N because multiples have already been eliminated.
# Optimization 2: eliminate multiples of a prime p beginning at p**2 because 
# 			      previous multiples have already been eliminated.

nb_max = 2_000_000

# create array of numbers
arr_nb = [*0..nb_max]
arr_nb[0] = nil
arr_nb[1] = nil  

# if number is not a prime, replace value by "nil"
(2..Math.sqrt(nb_max)).each do |nb|            # optimization 1
  if arr_nb[nb] 								   
    (nb**2..nb_max).step(2*nb) do |not_prime|  # optimization 2
      arr_nb[not_prime]=nil
    end
  end
end

# sum the primes
sum_primes = arr_nb.compact.inject {|sum, n| sum + n}
puts "The sum of the primes below nb_max: #{sum_primes}"