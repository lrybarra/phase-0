=begin

"99 bottles of beer on the wall..." Write a program which prints out the lyrics to that 
beloved classic, that field-trip favorite: "99 Bottles of Beer on the Wall."
	
=end

i = 99

while (i > 0)
	puts i.to_s + " bottles of beer on the wall, " + i.to_s + " bottles of beer!"

	i -= 1

	puts "You take one down, pass it around, " + i.to_s + " bottles of beer on the wall!"
end

puts "No More Beer"