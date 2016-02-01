=begin
In this challenge, you will make your own method to automatically create accountability groups from a list of names.
You'll want to make of the People in your cohort. Try to get everyone into an accountability group of 4 or 5. 
Be sure everyone is in a group of at least 3 -- It's no fun if someone is in a group by themself or with one 
other person. 

This is a creative challenge and you can make it as easy or difficult as you would like. Decide what an MVP
(Minimum Viable Product) will look like and what the output should be. This is part of the challenge.
=end

# PSEUDOCODE
# INPUT: AN ARRAY OF PEOPLE IN MY COHORT
# OUTPUT: ACCOUNTABILITY GROUPS OF 3-5 PEOPLE
# STEPS TO SOLVE:
  # SEE IF NO. OF PEOPLE IS DIVISIBLE BY 3, 4, OR 5
  #   IF YES, THEN SPLIT GROUPS ACCORDINGLY
  #   IF NOT, THEN SPLIT GROUPS, AND THEN ADD REMAINING PEOPLE

people = ["Alivia Blount","Alyssa Page","Alyssa Ransbury","Andria Reta","Austin Dorff","Autumn McFeeley","Ayaz Uddin","Ben Giamarino","Benjamin Heidebrink","Bethelhem Assefa","Bobby Reith","Dana Breen","Brett Ripley","Rene Castillo","Justin J Chang","Ché Sanders","Chris Henderson","Chris Pon","Colette Pitamba","Connor Reaumond","Cyrus Vattes","Dan Heintzelman","David Lange","Eduardo Bueno","Liz Roche","Emmanuel Kaunitz","FJ Collins Jr.","Frankie Pangilinan","Ian Fricker","Ian Thorp","Ivy Vetor","Jack Baginski","Jack Hamilton","JillianC","John Craigie","John Holman","John Maguire","John Pults","Jones Melton","Tyler Keating","Kenton Lin","Kevin Serrano","Kevin Sullivan","Kyle Rombach","Laura Montoya","Luis Ybarra","Charlotte Manetta","Marti Osteyee-Hoffman","Megan Swanby","Mike London","Michael Wang","Michael Yao","Mike Gwozdek","Miqueas Hernandez","Mitchell Kroska","Norberto Caceres","Patrick Skelley","Peter Kang","Philip Chung","Phillip Barnett","Pietro Martini","Robbie Santos","Rokas Simkonis","Ronu Ghoshal","Ryan Nebuda","Ryan Smith","Saralis Rivera","Sam Assadi","Spencer Alexander","Stephanie Major","Taylor Daugherty","Thomas Farr","Maeve Tierney","Tori Huang","Alexander Williams","Victor Wong","Xin Zhang","Zach Barton"]


def make_groups(people)
	accountability_groups = Hash.new
	group_number = 1
	counter = 1
	index = 0
	if people.size % 5 == 0
		groups = people.size / 5
	    until people[index] == nil
	    	until counter > 5
	    		accountability_groups[people[index]] = group_number
	    		index += 1
	    		counter += 1
	    	end
	    	counter = 1
	    	group_number += 1
	    end
	elsif people.size % 4 == 0
		groups = people.size / 4
	    until people[index] == nil
	    	until counter > 4
	    		accountability_groups[people[index]] = group_number
	    		index += 1
	    		counter += 1
	    	end
	    	counter = 1
	    	group_number += 1
	    end
	elsif people.size % 3 == 0
		groups = people.size / 3
	    until people[index] == nil
	    	until counter > 3
	    		accountability_groups[people[index]] = group_number
	    		index += 1
	    		counter += 1
	    	end
	    	counter = 1
	    	group_number += 1
	    end
	else
		groups = people.size / 4
		counter = 0
		(groups * 4).times do 
			accountability_groups[people[index]] = group_number
			counter += 1
			index += 1
			if (counter % 4 == 0)
				group_number += 1
			end
		end
		group_number = 1
		until people[index] == nil
			accountability_groups[people[index]] = group_number
			index += 1
			if index % 2 == 0
				group_number += 1
			end
		end
	end
	puts accountability_groups
end

make_groups(["A", "B", "C", "D", "E", "F", "G", "H", "I", "J"])
make_groups(["A", "B", "C", "D", "E", "F", "G", "H"])
make_groups(["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L","M"])
make_groups(["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V" "W", "X", "Y", "Z", "LL"])
make_groups(people)


=begin

What was the most interesting and most difficult part of this challenge?

> It was interesting to use my relatively new Ruby programming skills and apply it to an actual real-world problem that I could understand since
  I myself was put into an accountability group based on the size of my cohort. The most difficult part was determining how I wanted to split up
  the people. While I conceived more complex methods, I ended up going the simple route for time's sake

Do you feel you are improving in your ability to write pseudocode and break the problem down?

> I don't know that I'm necessarily improving, but I'm certainly not getting any worse at breaking the problem down using pseudocode

Was your approach for automating this task a good solution? What could have made it even better?

> I think it was a good solution since it easily breaks up the groups if the cohort number is divisible by 3, 4, or 5. In this way, all groups
  are evenly split. If the number does not fall into one of those three conditions then I add the remaining until none are left. I could have
  made it better by not necessarily traversing the array in order

What data structure did you decide to store the accountability groups in and why?

> I used a Hash with the Person as the key value and the Group Number as the value. I figured this to be the best solution since you could then
  look up a person or group easily.

What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?

> I made my code DRY but I did not learn any new Ruby methods. If I had some more time to work on this, I would definitely have explored the optional
  complexities.

=end













