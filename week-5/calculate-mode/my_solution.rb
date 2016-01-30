# Calculate the mode Pairing Challenge

# I worked on this challenge with Ronu Ghoshal

# I spent 2 hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.

# 0. Pseudocode

# What is the input? An array of numbers or strings
# What is the output? (i.e. What should the code return?) An array including the mode (most frequent value or values
# What are the steps needed to solve the problem?

# DEFINE a method "mode" that accepts one argument ("array")
# create an empty hash
# iterate over the array
# for each element in the array, if the element does not exist as key in the hash - pass the element in as a key, and its number of occurences as the value
# iterate over the hash and find the biggest value(s) - then pass them into a new array
# return the new array
#END

# 1. Initial Solution

def mode(array)
  h = Hash.new
  array.each do |element|
    if h[element] == nil
      h[element] = 1 # set initial count to 1
    else
      h[element] = h[element] + 1  
    end
  end
  result = Array.new
  quantity = (h.values.max)
  h.each do |key,value|
    if value == quantity
      result << key
    end
 end
 result
end

# 3. Refactored Solution

def mode(array)
  h = Hash.new(0)
  array.each do |element|
    h[element] += 1
  end
  result = Array.new
  h.each do |key,value|
    if value == h.values.max
      result << key
    end
 end
 result
end


# 4. Reflection
=begin
Which data structure did you and your pair decide to implement and why?

> We decided to create a Hash because we would be able to have unique keys representing the values from the arrays and the values would be the 
  number of times each key appeared in the array

Were you more successful breaking this problem down into implementable pseudocode than the last with a pair? 

> Same type of success as with my last pair

What issues/successes did you run into when translating your pseudocode to code?

> No issues. Our success was in the fact that we were able to make a smooth transition from our pseudocode to the actual code. I feel like working 
  on the pseudocode together put us on the same page and demonstrated that we both understood the problem and agreed upon the ways we would get to the
  solution.

What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?

> we used the each method to iterate over the array and our created hash. We found some methods when researching for our refactoring such as inject,
  however we did not end up using any of the found methods because we couldn't quite figure out how to implement them

=end