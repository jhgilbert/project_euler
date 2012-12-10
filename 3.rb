# The prime factors of 13195 are 5, 7, 13 and 29.

# What is the largest prime factor of the number 600851475143?

require_relative "timer"
require "prime"

def find_biggest_prime_factor(n)
	# Find the smallest number that will multiply into n, see if other factor is prime
	n2 = 1
	until n % n2 == 0 && Prime.prime?(n/n2) 
		n2 += 1
	end
	return n/n2
end