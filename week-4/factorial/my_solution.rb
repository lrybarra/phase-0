# Factorial

# I worked on this challenge with: Rene Castillo

# return number * number - 1 * ... 1
# Your Solution Below
def factorial(number)
  # Your code goes here
  result = 1

  if number == 1 or number == 0
  	return 1
  else
  	while (number>=2)
  		result *= number * (number - 1)
  		number -= 2
  	end
  	return result
  end
end