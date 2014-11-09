def add(a, b)
	a + b
end

def subtract(a, b)
	a - b
end

def sum(array)
	total=0
	array.each do |x|
		total += x
	end
	total
end

def multiply(*number)
	total=1
	number.each do |x|
		total *= x
	end
	total
end

def power(a,b)
	a**b
end

def factorial(number)
	total=1
	if number == 0
		return 1
	else
		while number >= 1 do 
			total *= number
			number -= 1
		end
	total
	end
end
