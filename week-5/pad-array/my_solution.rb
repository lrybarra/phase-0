# Pad an Array

# I worked on this challenge [by myself, with: Louis]

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input? An array, a minimum size, an optional padding value
# What is the output? an array with the minimum size and possibly a padded value.
# What are the steps needed to solve the problem?
#Check to see if container meets the minimum requirements. If it does you don't have to do anything.
# If it doesn't meet the minimum size then;
  # Iteratively adding the value to the end of the container until the size of the container meets the minimum size required of the container
# Send back the container


# 1. Initial Solution
def pad!(array, min_size, value = nil) #destructive
  if array.length >= min_size
    return array
  else
    diff = min_size - array.length
    diff.times do
      array << value
    end
    return array
  end
end

def pad(array, min_size, value = nil) #non-destructive
  # Your code here
  count = 0
  array_copy = []
  array.each do |i|
    array_copy[count] = i
    count += 1
  end
  
  if array_copy.length >= min_size
    array_copy
  else
    
    while (array_copy.length < min_size) do
      
      array_copy << value
      
    end
    return array_copy
  end
end


# 3. Refactored Solution

def pad!(array, min_size, value = nil) #destructive
  if array.length >= min_size
    return array
  else
    diff = min_size - array.length

    array.fill(value, array.length, min_size - array.length)
    return array
  end
end

def pad(array, min_size, value = nil) #non-destructive
  # Your code here
  
  array_copy = Array.new(array)
  
  if array_copy.length >= min_size
    array_copy
  else  
    array_copy.fill(value, array_copy.length, min_size - array_copy.length)
    return array_copy
  end
end


# 4. Reflection
=begin
Were you successful in breaking the problem down into small steps?

> Yes, we broke it down into about 3 smallers steps

Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?

> Yes we were easily able to translate it into code. Our successes lied in the fact that we were on the same page due to working on the
  pseudocode together.

Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?

> For the non-destructive solution, at first our solution was actually behaving destructively and so we discovered that we actually had
  to create a whole new array object rather than just copying the array into a new array variable

When you refactored, did you find any existing methods in Ruby to clean up your code?

> Yes, we found the fill method and utilized this to shorten the code.

How readable is your solution? Did you and your pair choose descriptive variable names?

> I believe that it is very readable, and yes we chose descriptive variable names

What is the difference between destructive and non-destructive methods in your own words?

> Destructive methods modify the object itself while non-destructive methods do work and give you the result of an operation without actually
  changing the object
=end









