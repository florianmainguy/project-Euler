#Summation of primes

#The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17
#Find the sum of all the primes below two million

primes = []

(2..2_000_000).each do |number|
  if (2..number-1).any? { |divid| number % divid == 0 }
    next
  else
    primes << number
  end
end

sum_primes = primes.inject { |sum, n| sum + n}
puts "The sum of the primes below two million: #{sum_primes}"
