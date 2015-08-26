# Summation of primes

# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17
# Find the sum of all the primes below two million

# SOLUTION 2. Executed Time: 16m24.040s

nb_max = 2_000_000
arr_nb = (2..nb_max).to_a
primes = [2]
sum_primes = 0
i=0

until arr_nb[i]**2 > nb_max
  arr_nb.delete_if do |number|
    number % arr_nb[i] == 0 && number != arr_nb[i]
  end
  i += 1
end

sum_primes = arr_nb.inject { |sum, n| sum + n }
puts "The sum of the primes below two million: #{sum_primes}"