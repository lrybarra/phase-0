# Build a simple guessing game


# I worked on this challenge by myself.
# I spent [#] hours on this challenge.

# Pseudocode

# Input:
  # Class takes in integer to be guessed (correct answer)
# Output:
  # Solved method lets you know if game has been solved
  # Guess method tells you where your guess was in relation to correct answer
# Steps:
  # initialize game with correct answer
  # ask user for a guess
  # In solved method, check to see if the guess matches the answer
    # simple equality check 
  # In guess method, check to see if guess was high, low, or correct
    # return a symbol accordingly
  # keep asking user for a guess until correct answer is given

# Initial Solution

class GuessingGameInitial
  def initialize(answer)
    # Your initialization code goes here
    @answer = answer
    @solved_status = false # game is never solved at it's instantiation
  end

  # Make sure you define the other required methods, too. 
  def guess(guessed_response)
  	if guessed_response < @answer
  		@solved_status = false
  		return :low
  	elsif guessed_response > @answer
  		@solved_status = false
  		return :high
  	else
  		@solved_status = true
  		return :correct
  	end
  end 

  def solved?
  	return @solved_status
  end
end

# driver code
=begin
game = GuessingGame.new(rand(100))
last_guess  = nil
last_result = nil

until game.solved?
  unless last_guess.nil?
    puts "Oops!  Your last guess (#{last_guess}) was #{last_result}."
    puts ""
  end

  print "Enter your guess: "
  last_guess  = gets.chomp.to_i
  last_result = game.guess(last_guess)
end

puts "#{last_guess} was correct!"
=end

# Refactored Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
    @solved_status = false # game is never solved at it's instantiation
  end

  def guess(guess)
  	guess != @answer ? @solved_status = false : @solved_status = true
  	guess < @answer ? :low : (guess > @answer ? :high : :correct)
  end 

  def solved?
  	return @solved_status
  end
end

#my_game = GuessingGame.new(10)
#my_game.guess(5)

# Reflection
=begin

How do instance variables and methods represent the characteristics and behaviors (actions) 
of a real-world object?

> By performing actions that digitally represent them. For example, a method that tells you how 
  your guess was in relation to the answer mimics a person doing that calculation in their head
  and telling you. Instance variables can be thought of as qualities of a real-world object,
  for example a Car class could have instance variables color, make, model, and tinted_windows (True or
  False). It could have methods for ignition, turn_off, turn, drive, and brake.

When should you use instance variables? What do they do for you?

> You should use instance variables when you want characteristics to be persisent throughout a program.
  They tell you the state of an object. They can be altered, referenced, or ignored.

Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?

> Flow control helps you step logically through any problem. It is very similar to what we do on a daily
  basis in our lives. For example, when you wake up in the morning -- IF you are hungry, you will eat. 
  IF NOT, you will do something else (like code). I had some trouble using the ternary operator only
  in the sense of syntax (logically I knew what it did).

Why do you think this code requires you to return symbols? What are the benefits of using symbols?

> Symbols can save on memory space, and Ruby can access them faster. They are immutable, so some joker
  can't come along and change the return value (like they could if it were a string). Plus, they 
  look really cool!

=end






