# Iterative method
def fib(n)
	ary = [0, 1]

	while n > 1 do 
		m = ary[-2] + ary[-1]
		ary << m
		n -= 1
	end
	return ary[-1]
end

# Recursive method
def fib_rec(n)
	return 0 if n == 0
	return 1 if n == 1
	fib_rec(n-1) + fib_rec(n-2)
end

puts "Sequence: 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55"
puts "Sequence[10] is 55"

puts "Iterative method: #{fib(10)}"
puts "Recursive method: #{fib_rec(10)}"
