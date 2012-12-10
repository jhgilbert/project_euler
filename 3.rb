# The prime factors of 13195 are 5, 7, 13 and 29.

# What is the largest prime factor of the number 600851475143?

require_relative "timer"

def find_biggest_prime_factor(n)
	n2 = n + 1
	loop do
		n2 -= 1
		mod = n % n2
	break if mod == 0 and is_prime?(n2)
	end
	n2 
end

def is_prime?(n)
	n2 = Math.sqrt(n).round
	indicator = 0
	until n2 == 2
		mod = n % n2
		if mod == 0
			indicator += 1
		end
		n2 -= 1
	end
	if indicator == 0
		true
	else
		false
	end
end