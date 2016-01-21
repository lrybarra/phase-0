# Simple Substrings

# I worked on this challenge with: Ryan Nebuda

=begin

Create a method called welcome that accepts an address as a single 
string.

It returns "Welcome to California" if the address includes "CA" 
and "You should move to California" otherwise.

(This is an old joke from back in the day when Dev Bootcamp 
was only in San Francisco. Don't worry, you don't have to move 
here. There isn't enough water for everyone as it is!)

=end 

# Your Solution Below

def welcome(address)
	if address["CA"] == "CA" 
		return "Welcome to California"
	else
		return "You should move to California"
	end
end

# string.substring(address, "CA")