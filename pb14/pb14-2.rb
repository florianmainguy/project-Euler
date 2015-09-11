# The following iterative sequence is defined for the set of positive integers:
#
# n → n/2 (n is even)
# n → 3n + 1 (n is odd)
#
# Using the rule above and starting with 13, we generate the following sequence:
#
# 13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1
#
# Which starting number, under one million, produces the longest chain?

nb_max = 1_000_000
longest_chain = 0
longest_number = 0
memo = {}

(2..nb_max).each do |start_number|
  chain = 1
  number = start_number
  until number == 1

    # Generate next number of the chain
    number%2 == 0 ? number /= 2 : number = (number*3 + 1)
    chain += 1

    # If next number has already been a starting number,
    # take the data already memorized
    if memo.include? number
      chain += memo[number] - 1
      number = 1
    end
  end

  # Memorize in a hash length of chain of each starting number
  memo[start_number] = chain

  # Record the starting number with the longest chain
  if chain > longest_chain
    longest_chain = chain
    longest_number = start_number
  end
end

puts "With starting number #{longest_number}: chain of #{longest_chain}"