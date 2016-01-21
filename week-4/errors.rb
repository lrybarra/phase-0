# Analyze the Errors

# I worked on this challenge by myself.
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

cartmans_phrase = "Screw you guys " + "I'm going home." #fixed

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
  end #fixed
end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# => errors.rb
# 2. What is the line number where the error occurs?
# => 170
# 3. What is the type of error message?
# => syntax error
# 4. What additional information does the interpreter provide about this type of error?
# => unexpected end-of-input, expecting keyword_end
# 5. Where is the error in the code?
# => # Write your reflection below as a comment. ^
# 6. Why did the interpreter give you this error?
# => The while loop does not have an end keyword, so it instead takes the "end" that was
# => written for the cartman_hates method. Therefore, the program is still expecting an
# => end for this method.

# --- error -------------------------------------------------------

south_park = "a lovely place with trees and benches" #fixed

# 1. What is the line number where the error occurs?
# => 38
# 2. What is the type of error message?
# => NameError
# 3. What additional information does the interpreter provide about this type of error?
# => in '<main>', for main:Object (NameError), undefined local variable or method
# 4. Where is the error in the code?
# => 'south_park'
# 5. Why did the interpreter give you this error?
# => Because we are calling this variable which has not been defined

# --- error -------------------------------------------------------

def cartman
end #fixed

cartman()

# 1. What is the line number where the error occurs?
# => 53
# 2. What is the type of error message?
# => NoMethodError
# 3. What additional information does the interpreter provide about this type of error?
# => in '<main>', for main:Object (NoMethodError), undefined method
# 4. Where is the error in the code?
# => 'cartman'
# 5. Why did the interpreter give you this error?
# => we are calling the method cartman which has not been explicitly defined as of yet

# --- error -------------------------------------------------------

def cartmans_phrase(bonus)
  puts "I'm not fat; I'm big-boned! " + bonus.to_s #fixed
end

cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
# => 71
# 2. What is the type of error message?
# => ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
# => (1 for 0), ArgumentError, wrong number of arguments
# 4. Where is the error in the code?
# => from errors.rb:75:in `<main>'
# 5. Why did the interpreter give you this error?
# => The cartmans_phrase method is defined to take zero arguments, however when it is
# => called on line 75, an argument is passed

# --- error -------------------------------------------------------

def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says("North Park is better!") #fixed

# 1. What is the line number where the error occurs?
# => 91
# 2. What is the type of error message?
# => ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
# => (0 for 1), Argument Error, wrong number of arguments
# 4. Where is the error in the code?
# => from errors.rb:95:in `<main>'
# 5. Why did the interpreter give you this error?
# => The opposite of the errror directly above, cartman_says has been defined to take 
# => one argument but when it is called on line 95 nothing is passed



# --- error -------------------------------------------------------

def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit Wyoming!', 'James') #fixed

# 1. What is the line number where the error occurs?
# => 113
# 2. What is the type of error message?
# => ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
# => (1 for 2), ArgumentError, wrong number of arguments
# 4. Where is the error in the code?
# => from errors.rb:117:in `<main>'
# 5. Why did the interpreter give you this error?
# => Method wants two arguments but the call on 117 only passes one.

# --- error -------------------------------------------------------

"Respect my authoritay!" * 5 #fixed

# 1. What is the line number where the error occurs?
# => 132
# 2. What is the type of error message?
# => TypeError
# 3. What additional information does the interpreter provide about this type of error?
# => `*': String can't be coerced into Fixnum
# 4. Where is the error in the code?
# => from errors.rb:132:in `<main>'
# 5. Why did the interpreter give you this error?
# => It is impossible to do this multiplication as "Respect my authoritay" is not a
# => number

# --- error -------------------------------------------------------

amount_of_kfc_left = 20/0.1 #fixed


# 1. What is the line number where the error occurs?
# => 148
# 2. What is the type of error message?
# => ZeroDivisionError
# 3. What additional information does the interpreter provide about this type of error?
# => in `/': divided by 0
# 4. Where is the error in the code?
# => from errors.rb:148:in `<main>'
# 5. Why did the interpreter give you this error?
# => Any mathematician worth their salt knows that you cannot divide by zero. 

# --- error -------------------------------------------------------

#require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# => 164
# 2. What is the type of error message?
# => LoadError
# 3. What additional information does the interpreter provide about this type of error?
# => in `require_relative': cannot load such file -- 
# => /Users/****/phase-0/week-4/cartmans_essay.md
# 4. Where is the error in the code?
# => from errors.rb:164:in `<main>'
# 5. Why did the interpreter give you this error?
# => this file does not exist


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.
=begin 

Which error was the most difficult to read?
	
	LoadError

How did you figure out what the issue with the error was?

	After creating a file named cartmans_essay.md I noticed that the error 
	still occurred so I simply commented the line out

Were you able to determine why each error message happened based on the code? 

	Yes, the errors were very straightforward and I fixed all except the last one.
	After doing some research, I cannot figure out why the error still occurs 
	even when the file exists.

When you encounter errors in your future code, what process will you follow to help you debug?
	
	I will read the error fully, not just the line number, and try to see if the fix
	is easy. If not, I will ask a teammate or research the error on my own. I will attempt
	to fix the code and rerun the program until the error is gone.

=end



