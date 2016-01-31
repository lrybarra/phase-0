# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Write a method separate_comma which takes a positive integer 
# as its input and returns a comma-separated integer as a string.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? a positive integer
# What is the output? a comma-separated integer as a string
# What are the steps needed to solve the problem?
# 	0. Determine how many commas needed
# 	1. Convert Integer to String
#   2. Insert Comma every three digits until no more commas needed
#   3. Return New String


# 1. Initial Solution



def separate_comma(my_integer)

	my_string = my_integer.to_s

	if my_string.length % 3 == 0
		commas_needed = my_string.length / 3 - 1
	else
		commas_needed = my_string.length / 3
	end

	my_array = Array.new(my_string.length + commas_needed)

	string_position = my_string.length - 1

	array_position = my_array.length - 1

	comma_counter = 0

	result_string = ""

	until array_position < 0

		if comma_counter == 3 
			my_array[array_position] = ","
			comma_counter = 0
			array_position -= 1
		else
			my_array[array_position] = my_string[string_position]
			array_position -= 1
			string_position -= 1
			comma_counter += 1
		end

		#print my_array

	end

	my_array.each do |character|
		result_string += character
		
	end

	return result_string

	#puts "commas needed " + commas_needed.to_s
	
end

#puts separate_comma(123)
#puts separate_comma(3456)
#puts separate_comma(1000000)



# 2. Refactored Solution

def separate_comma(i)
	s = i.to_s
	c = -s.length
	p = -1

	until p < c
		if p % 4 == 0
			s.insert(p, ',')
			c -= 1
		end
		p -= 1
	end
	return s
end

#puts separate_comma(1234567890123456789)

# 3. Reflection
=begin
What was your process for breaking the problem down? What different approaches did you consider?

> I broke the problem down in my head and then wrote out the steps I thought I would need to solve the problem. I knew that the key to my solution
  would be to determine how many commas were needed and then work from there. After writing code for an hour, however, I deleted everything
  and started fresh.

Was your pseudocode effective in helping you build a successful initial solution?

> Yes it was, I also used a pencil and paper to step through the problem. I enjoy the combination of typing and writing to arrive at a conclusion.

What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them 
(any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?

> I learned about the insert method while refactoring. So far, I'm not loving the Ruby documentation, I don't feel it's super readable especially when
  compared to other documentation I have read through. Using the insert method did significantly change how my code works because instead of 
  building an array like in my initial solution, I simply converted the integer to a string and never looked back.

How did you initially iterate through the data structure?

> I went backwards, starting from the end of the data structure

Do you feel your refactored solution is more readable than your initial solution? Why?

> No, I do not. However, it is much shorter and perhaps a bit more efficient.
	
=end
