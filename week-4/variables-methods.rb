# Full name greeting

puts "Enter Your First Name! "

first_name = gets.chomp

puts "Enter Your Middle Name! "

middle_name = gets.chomp

puts "Enter Your Last Name! "

last_name = gets.chomp

puts 'What\'s crackin ' + first_name + ' ' + middle_name + ' ' + last_name + '!'

# Bigger, better favorite numbers

puts ''
puts 'Enter Your Favorite Number: '

favorite_number = gets.chomp
result = favorite_number.to_i + 1

puts result.to_s + ' is a bigger and better number!'

=begin

How do you define a local variable?
	
	By writing the name of the variable, followed by an equals sign, followed by the value

How do you define a method?

	By writing "def", followed by the name of the method, followed by the parameters (if any) either 
	inside parenthesis or by themselves, separated by commas. Go to a new line and begin writing
	the method's code. After the code is done, on the final line of the method, write "end"

What is the difference between a local variable and a method?

	A method is a variable that stores a block of code while a basic variable only stores a value and cannot store code.

How do you run a ruby program from the command line?

	> ruby program_name.rb

How do you run an RSpec file from the command line?

	> rspec spec_program_name.rb

What was confusing about this material? What made sense?	

	Everything was straight forward, though I noticed that some tinkering was necessary 
	to get the method rjust to output the way I wanted.

https://github.com/lrybarra/phase-0/blob/master/week-4/angry-boss.rb

https://github.com/lrybarra/phase-0/blob/master/week-4/table-of-contents.rb

https://github.com/lrybarra/phase-0/blob/master/week-4/variables-methods.rb

https://github.com/lrybarra/phase-0/blob/master/week-4/define-method/my_solution.rb

https://github.com/lrybarra/phase-0/blob/master/week-4/address/my_solution.rb

=end

