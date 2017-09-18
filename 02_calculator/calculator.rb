#write your code here
def add num1, num2
	return num1 + num2
end

def subtract num1, num2
	return num1 - num2
end

def sum array
	number = 0
	if array.length === 0
		return 0
	else
		array.each do |num|
			number += num
		end
	end
	return number
end

def multiply *number
	if number === []
		return 0
	end
	result = 1
	number.each do |num|
		result = result * num
	end
	return result
end

def power num1, num2
	result = num1
	(num2 - 1).times do
		result = (result * num1)		
	end
	return result
end

def factorial number
	if number === 0
		return 1
	else
		result = number
		f = (number - 1)
		while f > 0
			result = result * f
			f -= 1
		end
		return result
	end
end
