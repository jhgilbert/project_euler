# The prime factors of 13195 are 5, 7, 13 and 29.

# What is the largest prime factor of the number 600851475143?

require_relative "timer"

def find_biggest_prime_factor(n)
	n2 = n + 1
	mod = nil
	loop do
		n2 -= 1
		mod = n % n2
		if mod == 0
			status = is_prime?(n2)
		end
	break if status == true
	end
	n2
end
	
def is_prime?(n)
	i = 0
	n2 = n
	until n2 == 2
		if (n % (n2 - 1)) == 0
			i += 1
		end
		n2 -= 1
	end
	if i == 0
		true
	else
		false
	end
end