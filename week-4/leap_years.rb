=begin

Leap Years. Write a program which will ask for a starting year and an ending year, 
and then puts all of the leap years between them (and including them, if they are also 
leap years). Leap years are years divisible by four (like 1984 and 2004). However, years 
divisible by 100 are not leap years (such as 1800 and 1900) unless they are divisible 
by 400 (like 1600 and 2000, which were in fact leap years). (Yes, it's all pretty confusing, 
but not as confusing has having July in the middle of the winter, which is what would
eventually happen.)

=end 

puts "***********************"
puts "Enter a starting year > "

starting_year = gets.chomp.to_i

puts "Enter an ending year > "

ending_year = gets.chomp.to_i

if (starting_year > ending_year)
	puts "ERROR: Starting year cannot be bigger than ending year!"
else

	puts "Leap years in range:"

	year = starting_year

	while (year <= ending_year)
		if (year % 4 == 0)
			if (year % 100 == 0)
				if (year % 400 == 0)
					puts year.to_s
				end
			else
				puts year.to_s
			end
		end
		year += 1
	end
end

puts "***********************"