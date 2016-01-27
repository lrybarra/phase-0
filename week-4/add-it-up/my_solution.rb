# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [with: Rene Castillo].

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: Array elements
# Output: Sum of all array elements
# Steps to solve the problem.


# 1. total initial solution



# 3. total refactored solution



# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input:
# Output:
# Steps to solve the problem.


# 5. sentence_maker initial solution



# 6. sentence_maker refactored solution

def total(array_of_numbers)
	sum = 0

	array_of_numbers.each do |num|
		sum += num
	end
	return sum
end

def sentence_maker(array_of_strings)
	count = 0
	new_string = ''
	array_of_strings.each do |str|
		if count == 0 
			new_string.concat(str.capitalize.to_s)
		else
			new_string.concat(str.to_s)
		end
		new_string.concat(" ")
		count += 1
	end
	new_string.strip!
	new_string.concat(".")
	return	new_string

end
