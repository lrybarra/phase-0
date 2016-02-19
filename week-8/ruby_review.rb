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
if (me_bool)
  puts "BINGO!"
else
  puts "YOU GET NOTHING! YOU LOSE! GOOD DAY, SIR/MADAM!"
end

# # Numbers to English Words


# I worked on this challenge by myself
# This challenge took me [#] hours.

# Pseudocode
# Initial Solution
def in_words(num)
  num_word = ""
  arr = num.to_s.chars
  #print arr
  for i in 0...arr.length
    case arr[i].to_i
      when 0
      	if (num_word.empty?)
          return "zero"
        end
      when 1
      	if (arr.length == 3)
      	  return "one hundred"
      	elsif (arr.length == 2)
      	  case arr[1].to_i
      	    when 0
      	      return "ten"
      	    when 1
      	      if (num_word.empty?)
      	       return "eleven" 
      	      else
      	      	num_word += "one"
      	      end
      	    when 2
      	      if (num_word.empty?)
      	        return "twelve"
      	      end
      	    when 3
      	      if (num_word.empty?)
      	      	return "thirteen"
      	      end
      	    when 4
      	      if (num_word.empty?)
      	      	return "fourteen"
      	      end
      	    when 5
      	      if (num_word.empty?)
      	      	return "fifteen"
      	      end
      	    when 6
      	      if (num_word.empty?)
      	      	return "sixteen"
      	      end
      	    when 7
      	      if (num_word.empty?)
      	      	return "seventeen"
      	      end
      	    when 8
      	      if (num_word.empty?)
      	      	return "eighteen"
      	      end
      	    when 9
      	      if (num_word.empty?)
      	      	return "nineteen"
      	      end
      	  end   
      	else
      	  return "one"
      	end
      when 2
        arr.length > 1 ? (num_word.empty? ? num_word += "twenty " : num_word += "two") : num_word += "two"
      when 3
        arr.length > 1 ? (num_word.empty? ? num_word += "thirty " : num_word += "three") : num_word += "three"
      when 4
        arr.length > 1 ? (num_word.empty? ? num_word += "fourty " : num_word += "four") : num_word += "four"
      when 5
      	arr.length > 1 ? (num_word.empty? ? num_word += "fifty " : num_word += "five") : num_word += "five"
      when 6
      	arr.length > 1 ? (num_word.empty? ? num_word += "sixty " : num_word += "six") : num_word += "six"
      when 7
      	arr.length > 1 ? (num_word.empty? ? num_word += "seventy " : num_word += "seven") : num_word += "seven"
      when 8
      	arr.length > 1 ? (num_word.empty? ? num_word += "eighty " : num_word += "eight") : num_word += "eight"
      when 9
      	arr.length > 1 ? (num_word.empty? ? num_word += "ninety " : num_word += "nine") : num_word += "nine"
    end
  end
  return num_word
end
quit = false

until quit
  print "Enter a number from 0 to 100 (q to quit) :> "
  num = gets.chomp()
  if (num.to_s == 'q')
  	quit = true
  else
  	puts in_words(num.to_i)
  end
end



# Refactored Solution






# Reflection

=begin  

######### Reflection #########

What concepts did you review or learn in this challenge?
What is still confusing to you about Ruby?
What are you going to study to get more prepared for Phase 1?

=end