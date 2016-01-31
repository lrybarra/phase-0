# Die Class 1: Numeric

# I worked on this challenge by myself

# I spent [] hours on this challenge.

# 0. Pseudocode

# Input: Number of sides
# Output: a Die with Set Number of Sides
# Steps: Create Die
  # Create method for rolling die
  # Create method for showing number of die sides
  # throw error if die sides less than 1


# 1. Initial Solution

class Die
  def initialize(sides)
    # code goes here
    if sides < 1 
    	raise ArgumentError.new("Can't have a die with less than one side!")
    else
    	@sides = sides
    end
  end

  def sides
    # code goes here
    return @sides
  end

  def roll
    # code goes here
    return rand(@sides) + 1
  end
end

# 3. Refactored Solution

class Die
  def initialize(sides)
    # code goes here
    if sides < 1 
    	raise ArgumentError.new("Can't have a die with less than one side!")
    else
    	@sides = sides
    end
  end

  def sides
    # code goes here
    return @sides
  end

  def roll
    # code goes here
    return rand(@sides) + 1
  end
end

# 4. Reflection

=begin
What is an ArgumentError and why would you use one?
> An error that lets you know something is wrong (not necessarily syntactically) with an argument you
  have passed to a method
What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
> rand(int) -- I had to make sure to add one to the result since we couldn't have a zero roll and
  to ensure that the max value could be a possiblity
What is a Ruby class?
> A blueprint for creating objects (instances of the class)
Why would you use a Ruby class?
> To manage data, state, and manipulate the state of data
What is the difference between a local variable and an instance variable?
> A local variable is only accessible within a method and is destroyed once the method has run,
  whereas an instance variable belongs to an object (instance of a class) and is available until
  its object is destroyed
Where can an instance variable be used?
> In methods or the body of code
=end











