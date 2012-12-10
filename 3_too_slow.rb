# The prime factors of 13195 are 5, 7, 13 and 29.

# What is the largest prime factor of the number 600851475143?

require_relative "timer"

def find_factors(n)
	factors = []
	n2 = n
	until n2 == 0
		mod = n % n2
		if mod == 0
			factors << n2
		end
		n2 -= 1
	end
	factors
end

def find_prime_factors(n)
	primes = []
	factors = find_factors(n)
	factors.map do |i|
		factors2 = find_factors(i)
		if factors2.length == 2
			primes << i
		end
	end
	primes
end

def find_largest_prime_factor(n)
	primes = find_prime_factors(n)
	primes.max
end