#Summation of primes

#The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17
#Find the sum of all the primes below two million

=begin
until arr_2_million.count == 0
  divisor = arr_2_million.first
  break if arr_2_million.last / divisor < divisor
  arr_2_million.delete_if do |number|
    number % divisor == 0 && number != divisor
  end
  #sum_primes += divisor
  arr_2_million.delete(divisor)
end
=end

=begin
until arr_2_million[i]**2 > arr_2_million.last
  arr_2_million.delete_if do |number|
    number % arr_2_million[i] == 0 && number != arr_2_million[i]
  end
  i += 1
end
=end

=begin
arr_2_million = (2..2000000).to_a
primes = [2]
sum_primes = 0
i=0

arr_2_million.each do |number|
  primes.each do |prime|
  	break if number % prime == 0
  	if (prime == primes.last) || (number / prime < prime)
  	  primes << number
  	  break
  	end
  end
end
=end

nb_max = 2_000_000
arr_nb = []
primes = []

sum_primes = 0

# create a table of boolean
(nb_max+1).times do
  arr_nb << true
end

arr_nb[0] = false  # just an offset

# 1 is not a prime
arr_nb[1] = false

# even numbers are not primes
k=4
until k > nb_max
  arr_nb[k] = false
  k += 2
end

ind_next_prime = 3
until ind_next_prime**2 > nb_max

  # odd numbers
  k=1
  ind_odd_nb=3
  until ind_odd_nb > nb_max 
    ind_odd_nb = ind_next_prime*(2*k+1)
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

#sum_primes = primes.inject { |sum, n| sum + n }
#sum_primes = arr_2_million.inject { |sum, n| sum + n }
puts "The sum of the primes below two million: #{sum_primes}"
#puts arr_nb.inspect