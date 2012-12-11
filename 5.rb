# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

# Find a number to start with
# Divide that number by all of the factors
# If that doesn't work, try the next number up.
require_relative "timer"

public

def sum(array)
	s = 0
	array.each { |i| s += i }
	s
end

def solution(divisors)
	lowest = divisors.max
	mods = []
	x = nil
	loop do
		divisors.each do |d|
			mods << lowest % d
		end
		x = sum(mods)
		if x != 0
		lowest += 1
		mods = []
		else break
		end
	end
	lowest
end
