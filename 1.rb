# Add all the natural numbers below 1,000 that are multiples of 3 or 5.

def findsum(n)
	n -= 1 # Because we're finding all numbers "below,"" not "all numbers equal to and below."
	number = 0
	until n == 2
		a = n % 3
		b = n % 5
		if a == 0
			number += n
		elsif b == 0
			number += n
		end
		n -= 1
	end
	number
end