#Attr Methods

# I worked on this challenge [by myself, with:]

# I spent [#] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:

class NameData
	attr_reader :name
	def initialize
		@name = "Albert E. Gator"
	end
end


class Greetings
	def initialize
		@name_data = NameData.new
	end

	def hello
		puts "Hello " + @name_data.name + "! How excellent to see you today."
	end
end

greet = Greetings.new
greet.hello


# Reflection
=begin

Release 1:
What are these methods doing?

> They are either setting or getting attributes. Nothing more, nothing less. 

How are they modifying or returning the value of instance variables?

> Returning attributes with implicit return statements within the methods. Setting attributes with
  equals sign assignment.

Release 2:

What changed between the last release and this release?

> An attribute reader was added for age, therefore eliminating the need for the age "getter" method.

What was replaced?

> See above answer :)

Is this code simpler than the last?

> Yes!

Release 3:

What changed between the last release and this release?

> An attribute writer was added for age, therefore eliminating the need for the age "setter" method.

What was replaced?

> See above answer :)

Is this code simpler than the last?

> Yep!

Release 6: 

What is a reader method?

> It is a method that returns a specific attribute of a class. Usually given a helpful name for
  easy identifiation.

What is a writer method?

> A method that sets or changes a specific attribute of a class. 

What do the attr methods do for you?

> Help you to write cleaner and more efficient code because they eliminate the need for reader / writer
  methods.

Should you always use an accessor to cover your bases? Why or why not?

> No because you don't always want your attributes exposed and writeable. That is just not good programming
  practice. 

What is confusing to you about these methods?

> Nada. Zip. Zero. Zilch.

=end




