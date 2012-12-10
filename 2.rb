# Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be:

# 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

# By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.
public

def sum(a)
	s = 0
	a.each{ |i| s += i }
	s
end

def find_even(a)
	evens = []
	a.each do |i|
		m = i % 2
		if m == 0
			evens << i
		end
	end
	evens
end

def generate_fibonaccis(input)
	fibonaccis = [1,2] # Because Fibonaccis gotta go somewhere.
	y = 1 # Just to ...
	z = 2 # get the party ...
	a = nil # ... started.
	loop do 
		a = y + z
		fibonaccis << a
		y = z
		z = a
		break if a >= input
	end
	fibonaccis
end

def find_sum_of_even_fibonaccis(n)
	array = generate_fibonaccis(n)
	evens = find_even(array)
	sum(evens)
end
