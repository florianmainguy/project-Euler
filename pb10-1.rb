# Summation of primes

# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17
# Find the sum of all the primes below two million

# SOLUTION 1. Executed Time: 18m31.577s

nb_max = 2_000_000
arr_nb = (2..nb_max).to_a
sum_primes = 0

until arr_nb.count == 0
  divisor = arr_nb.first
  break if arr_nb.last / divisor < divisor
  arr_nb.delete_if { | number | number % divisor == 0 && number != divisor }
  sum_primes += divisor
  arr_nb.delete(divisor)
end

sum_primes += arr_nb.inject { |sum, n| sum + n }
puts "The sum of the primes below two million: #{sum_primes}"