# Sum of even-valued terms of Fibonacci Sequence whose terms do not exceed 4 million

fib = [1, 2]
sum = 2

loop do
   fib << fib[-1]+fib[-2]
   if fib[-1]%2 == 0
	sum += fib [-1]
   elsif fib[-1] > 4000000
	break
   end
end

puts sum
