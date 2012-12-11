# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91  99.

# Find the largest palindrome made from the product of two 3-digit numbers.

def find_largest_palindrome(size)
	a = find_lowest_of_size(size) # Find the lowest possible factor.
	b = find_highest_of_size(size) # Find the highest possible factor.
	set1 = (a..b).to_a # Make an array of the factor range.
	x = nil
	palindromes = []
	# Note to self: Look up a better way to multiply (a..b) by (a..b).
	until a == b 
		set1.each do |i|
			x = i * a
			if palindrome?(x)
				palindromes << x
			end
		end
		a += 1
	end
	palindromes.max
end

def find_lowest_of_size(size)
	num = "1"
	until num.length == size
		num.concat("0")
	end
	num.to_i
end

def find_highest_of_size(size)
	num = "9"
	until num.length == size
		num.concat("9")
	end
	num.to_i
end

def palindrome?(num)
	if num.to_s.reverse == num.to_s
		true
	else
		false
	end
end


