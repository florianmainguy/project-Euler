# Summation of primes

# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17
# Find the sum of all the primes below two million

# SOLUTION 4. Executed Time: 3.108s

nb_max = 2_000_000
arr_nb = []
sum_primes = 0

# create a table of boolean
(nb_max+1).times do
  arr_nb << true
end
arr_nb[0] = false  # just an offset, so arr_nb[1] => 1

# 1 is not a prime
arr_nb[1] = false

# even numbers are not primes
k=4
until k > nb_max
  arr_nb[k] = false
  k += 2
end

# odd numbers
ind_next_prime = 3
until ind_next_prime**2 > nb_max
  k=1
  ind_odd_nb=3
  until ind_odd_nb > nb_max 
    ind_odd_nb = ind_next_prime*(2*k+1)   # steps of 2 * odd nb to
                                          # avoid even nb
    arr_nb[ind_odd_nb] = false
    k += 1
  end

  # find the next prime
  ind_next_prime += arr_nb[ind_next_prime+1..-1]
    .find_index { |value| value == true } + 1
end

# sum the primes
arr_nb.each_with_index do |value, index|
  if value == true
  	sum_primes += index
  end
end

puts "The sum of the primes below nb_max: #{sum_primes}"