/* Somme des multiples de 3 et 5 du nombre 1000 */

mult_trois[]
mult_cinq[]

1000.times do |i|
   mult_trois << i if i%3 == 0
   mult_cinq << i if i%5 == 0
end

sum = mult_trois.inject{|sum,x| sum + x} + mult_cinq.inject{|sum,x| sum + x}
puts sum
