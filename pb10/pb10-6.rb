# Summation of primes

# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17
# Find the sum of all the primes below two million

# SOLUTION 5 Executed Time: 0.348s

# Implementation of eratosthenes' sieve
#
# Instead of taking a number and checking if it's a prime, we take a prime and 
# eliminate all his multiples. The next number following the prime that has not been
# eliminating is the next prime. We can then loop this two operations till we get
# all the primes of the number N.
#
# Optimization 3: eliminate first all even numbers (except 2).
# 				  Then eliminate only multiples of primes that are odd.

nb_max = 2_000_000

# create array of numbers
arr_nb = [*0..nb_max]
arr_nb[0] = nil
arr_nb[1] = nil  

# even numbers
(2**2..nb_max).step(2) {|even_nb| arr_nb[even_nb] = nil}

# odd numbers
(3..Math.sqrt(nb_max)).each do |number|   
  if arr_nb[number]
    (number**2..nb_max).step(2 *number) do |not_prime|   # optimization 3
      arr_nb[not_prime]=nil
    end
  end
end

# sum the primes
sum_primes = arr_nb.compact.inject {|sum, n| sum + n}
puts "The sum of the primes below nb_max: #{sum_primes}"