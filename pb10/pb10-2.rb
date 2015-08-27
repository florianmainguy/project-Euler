# Summation of primes

# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17
# Find the sum of all the primes below two million

# SOLUTION 2. Executed Time: 5.380s

# For each number n from 0 to 2million, check if it is divisible by 
# the known prime numbers. If not, it is a prime, add it to "primes"

nb_max = 2_000_000
arr_nb = (2..nb_max).to_a
primes = [2]
sum_primes = 0
i=0

arr_nb.each do |number|
  primes.each do |prime|
  	break if number % prime == 0
  	if (prime == primes.last) || (number / prime < prime) # The highest prime p of a
  	  primes << number 									  # a number N: p**2 < N
  	  break
  	end
  end
end

sum_primes = primes.inject { |sum, n| sum + n }
puts "The sum of the primes below two million: #{sum_primes}"