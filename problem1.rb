# Somme des multiples de 3 et 5 du nombre 1000

mult = []

1000.times do |i|
   mult << i if (i%3 == 0 || i%5 == 0)
end

sum = mult.inject{|sum,x| sum + x} 
puts sum
