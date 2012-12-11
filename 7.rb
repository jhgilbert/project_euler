# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

# What is the 10 001st prime number?

def find_nth_prime(n)
	primes = []
	x = 1
	count = 0
	until primes.length == n
		x = next_prime(x)
		count += 1
		primes << x
	end
	primes[-2]
end

def is_prime?(n) #works
	for d in (2..(Math.sqrt(n) + 1))
		if (n % d) == 0
			return false
		end
	end
end

def next_prime(n) #works
	n2 = n
	loop do
		n2 += 1
		is_prime?(n2)		
	break if is_prime?(n2) != false
	end
	n2
end