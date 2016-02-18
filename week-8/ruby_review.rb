# Create a Bingo Scorer (SOLO CHALLENGE)

# I spent [#] hours on this challenge.

# Pseudocode
# check every element in first row
# IF 'x' found 
#   IF 'x' is first or last element
#     IF first element
#       check second element of second row
#       check third element of third row
#       check fourth element of fourth row
#       check fifth element of fifth row
#       IF five 'x' found
#         BINGO!
#       ELSE
#         NO BINGO
#    IF last element
#       check 
#   check rest of column for 'x'
#     IF four more found (total of five)
#       BINGO!
#     ELSE
#       NO BINGO!  
# IF none found
# 
#    

# Initial Solution
class BingoScorer
  def initialize()
  end
  
  def checkBoard?(bingoBoard)
  	x_vert = Array.new(5)
  	x_ve_c = 0
  	x_hori = 0
  	x_di_r = 0
  	x_di_l = 0
  	bingo = false
    
    # check first row
  	for e in 0..4
  	  if (bingoBoard[0][e] == 'x')
  	  	if (e == 0)
          x_vert[0] = true
          x_ve_c += 1
          x_hori += 1
          x_di_r += 1
        elsif (e == 4) # Fifth Element, Starring Bruce Willis
          x_vert[4] = true
          x_ve_c += 1
          x_di_l += 1
          x_hori += 1
        else
          x_vert[e] = true
          x_ve_c += 1
          x_hori += 1
        end
  	  end 
  	end
  
 	if (x_hori == 5)
  	  return true
   	end

   	if (x_di_r == 1) # [1][1] [2][2] [3][3] [4][4]
   	  for r in 0..4
   	  	if (bingoBoard[r][r] == 'x')
   	  	  
   	  	  x_di_r += 1
   	  	end
   	  end
   	end

   	if (x_di_r == 6)
      return true
   	end

   	if (x_di_l == 1) # [0][4] [1][3] [2][2] [3][1] [4][0]
   	  dec = 4
   	  for r in 0..4
   	  	if (bingoBoard[r][dec] == 'x')
   	  	  x_di_l += 1
   	  	end
   	  	dec -= 1
   	  end
   	end

   	if (x_di_l == 6)
   	  return true
   	end
  	
  	if (x_ve_c == 1)
  		x_ve_c = 0
	  	for e in 0..4 
	  	  if (x_vert[e] == true)
	  	    for r in 0..4
	  	      if (bingoBoard[r][e] == 'x')
	  	      	x_ve_c += 1
	  	      end
	  	    end
	  	    if (x_ve_c == 5)
	  	      return true
	  	    else
	  	      x_ve_c = 0
	  	    end
	  	  end
	  	end
    end

    x_hori = 0
    # check remaining rows
    for r in 1..4
      if (bingoBoard[r][0] == 'x')
 	    x_hori += 1
 	    for e in 1..4
 	      if (bingoBoard[r][e] == 'x')
 	      	x_hori += 1
 	      end
 	    end
      end
      if (x_hori == 5)
      	return true
      else
      	x_hori = 0
      end
    end

    return false

  	# bingoBoard.each do |r|
  	# 	for e in 0..4
  	# 		if (r[e] == 'x')
  	# 		  if (bingoBoard[0] == r && e == 0)
  	# 		  	for i in 0..4
  	# 		  	  if (r[i] == 'x')
  	# 		  	    x_counter += 1	
  	# 		  	  end
  	# 		  	end

  	# 		  end
  	# 		end
  	# 	end
  	# end
  	puts "BINGO!"
  	puts "YOU GET NOTHING! YOU LOSE! GOOD DAY, SIR/MADAM!"
  end

end

# Refactored Solution


# DRIVER TESTS GO BELOW THIS LINE
# implement tests for each of the methods here:
vertical = [[47, 44, 71, 'x', 88],
            [22, 69, 75, 'x', 73],
            [83, 85, 97, 'x', 57],
            [25, 31, 96, 'x', 51],
            [75, 70, 54, 'x', 83]]


right_to_left = [['x', 44, 71, 8, 88],
                 [22, 'x', 75, 65, 73],
                 [83, 85, 'x', 89, 57],
                 [25, 31, 96, 'x', 51],
                 [75, 70, 54, 80, 'x']]


left_to_right = [[47, 44, 71, 8, 'x'],
                  [22, 69, 75, 'x', 73],
                  [83, 85, 'x', 89, 57],
                  [25, 'x', 96, 68, 51],
                  ['x', 70, 54, 80, 83]]
horizontal = [[47, 44, 71, 8, 88],
              ['x', 'x', 'x', 'x', 'x'],
              [83, 85, 97, 89, 57],
              [25, 31, 96, 68, 51],
              [75, 70, 54, 80, 83]]
first = [['x', 44, 71, 8, 88],
        ['x', 69, 75, 65, 73],
        ['x', 85, 97, 89, 57],
        ['x', 31, 96, 68, 51],
        ['x', 70, 54, 80, 83]]
non = [[47, 44, 71, 8, 88],
        ['x', 69, 75, 65, 73],
        ['x', 85, 97, 89, 57],
        ['x', 31, 96, 68, 51],
        ['x', 70, 54, 80, 83]]
my_bingo = BingoScorer.new()
me_bool = my_bingo.checkBoard?(non)
puts me_bool
# sample boards


# Reflection

=begin  

######### Reflection #########

What concepts did you review or learn in this challenge?
What is still confusing to you about Ruby?
What are you going to study to get more prepared for Phase 1?

=end