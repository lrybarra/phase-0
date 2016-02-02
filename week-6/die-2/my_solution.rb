# Die Class 2: Arbitrary Symbols


# I worked on this challenge by myself.
# I spent 3 Pomodoros on this challenge.

# Pseudocode

# Input: Array of Strings
# Output: 
  # Die#roll outputs a random side of the created die
# Steps:
  # Initialize "side" variables
  # Throw error if class is passed an empty array
  # Define roll method
     # Method should randomly choose a side
        # Choose random number
        # return side associated with that number (index of array element)

# Initial Solution

class DieInitial
  def initialize(labels)
  	if labels.size == 0
  		raise ArgumentError.new("You cannot make a die with no sides! Las Vegas would be ashamed!")
  	else
  		@sides = labels.size
  		@labels = labels
  	end
  end

  def sides
  	return @sides
  end

  def roll
  	sidez = @sides
  	roll_index = rand(sidez)
  	return @labels[roll_index]
  end
end

#bad_die = Die.new([])
=begin
my_die = Die.new(["♥", "♣", "♦", "♠"])
puts my_die.sides 
puts "First Roll  " + my_die.roll
puts "Second Roll " + my_die.roll
puts "Third Roll  " + my_die.roll
puts "Fourth Roll " + my_die.roll
=end

# Refactored Solution

class Die
  def initialize(labels)
  	if labels.empty?
  		raise ArgumentError.new("Illegal Die!")
  	else
  		@sides = labels.size
  		@labels = labels
  	end
  end

  def sides
  	return @sides
  end

  def roll
  	return @labels.sample.to_s
  end
end

#bad_die = Die.new(Array.new)
my_die = Die.new(["♥", "♣", "♦", "♠"])
puts my_die.sides 
puts "First Roll  " + my_die.roll
puts "Second Roll " + my_die.roll
puts "Third Roll  " + my_die.roll
puts "Fourth Roll " + my_die.roll

# Reflection
=begin
What were the main differences between this die class and the last one you created in terms of 
implementation? Did you need to change much logic to get this to work?

> The main difference in implementation was processing an array versus handling an Integer as the argument
  for initializing the die. In my initial solution I once again used Ruby's rand function to generate
  a random roll. However, at its heart I feel like this is the same program, just upgraded. Similar to
  what Nintendo of Japan did with Super Mario Bros. and Super Mario Bros 2. The underlying logic is 
  the same, but the game is a bit snazzier.

What does this exercise teach you about making code that is easily changeable or modifiable? 

> You must make your code readable either through clean layouts and indentations or by utilizing 
  good comments so that when someone (yourself included) wants to change or modify the code they will
  have an easier time. In my case, I recalled how I wrote the original Die class and then used that 
  skeleton to build upon.

What new methods did you learn when working on this challenge, if any?

> When I refactored, I took a look at the Well-Grounded Rubyist and found the empty? method and used
  it to check if someone is being sneaky by creating an empty die. This is just not possible, not 
  even the most crooked booky in Vegas would stand for it. So, instead of checking the size of the array
  and making sure it isn't zero, I used this method. Saved only a few characters, but I'm happier with
  the way it looks. 

  In addition, I found the sample method which pulls a random element from the array. Since I didn't
  pass it any arguments, it returns only one element. What's cool to know is that it can return 
  multiple random elements, in case you wanted to build a game around that die logic.

What concepts about classes were you able to solidify in this challenge?

> Definitely initialize, which is somewhat different (I have learned Java and C in the past). I love
  OOP and building classes is so much fun because it opens up a literal world of possibilities. Class
  variables also became more solid, though I'm sure I will learn so much more in the future.
  
=end










