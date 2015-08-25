# Largest prime number of 600851475143
 
number = 600851475143
i = 1

while (number != i) do
    if (number%i == 0)
       number /= i
       i=1
    end
    i+=1
end

puts number