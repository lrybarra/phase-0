# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent 8 hours on this challenge.


# Release 0: Pseudocode
# Outline: Create a BINGO board game!

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #fill in the outline here
  # generate random number from 0-4 (inclusive) and use this to determine letter
  # generate random number from 1-100 (inclusive)
  # pass the "ball" (e.g. G44) to called columnn

# Check the called column for the number called.
  #fill in the outline here
  # check all five board positions for the number
  # utilize logic or method that will return true / false

# If the number is in the column, replace with an 'x'
  #fill in the outline here
  # IF TRUE (see above method), simply assign 'X' to this position

# Display a column to the console
  #fill in the outline here
  # pass in letter of column that you want to display
  # print each number in that column to a new line

# Display the board to the console (prettily)
  #fill in the outline here
  # print B I N G O across top of board
  # optional lines 
  # print all numbers and X's
  # no free space? :'( 

# Initial Solution

class BingoBoardInitial

  def initialize(board)
    @bingo_board = board # 5 x 5 Array
    @letters = [:B, :I, :N, :G, :O]
  end

  def call
    letter = @letters.sample
    number = rand(100) + 1
    puts letter.to_s + number.to_s
    # pass ball to checker
    check(letter, number)
    return letter.to_s + number.to_s
  end
  # cheat method only for debugging purposes
  def cheat
    check(:B, 47)
    puts "me cheat!"
  end

  def check(letter, number)
    case letter
      when :B then
        for i in 0..4
          if @bingo_board[i][0] == number
            puts "HIT!"
            @bingo_board[i][0] = 'X '
          end
        end
      when :I then
        for i in 0..4
          if @bingo_board[i][1] == number
            puts "HIT!"
            @bingo_board[i][1] = 'X '
          end
        end
      when :N then
        for i in 0..4
          if @bingo_board[i][2] == number
            puts "HIT!"
            @bingo_board[i][2] = 'X '
          end
        end
      when :G then
        for i in 0..4
          if @bingo_board[i][3] == number
            puts "HIT!"
            @bingo_board[i][3] = 'X '
          end
        end
      when :O then
        for i in 0..4
          if @bingo_board[i][4] == number
            puts "HIT!"
            @bingo_board[i][4] = 'X '
          end
        end
      else
        puts "You should never see me!"
    end
  end

def display_column(letter)
  case letter
      when :B then
        puts 'B'
        for i in 0..4
          puts @bingo_board[i][0]
        end
      when :I then
        puts 'I'
        for i in 0..4
          puts @bingo_board[i][1]
        end
      when :N then
        puts 'N'
        for i in 0..4
          puts @bingo_board[i][2]
        end
      when :G then
        puts 'G'
        for i in 0..4
          puts @bingo_board[i][3]
        end
      when :O then
        puts 'O'
        for i in 0..4
          puts @bingo_board[i][4]
        end
      else
        puts "You should never see me!"
    end
end

def display_board
  @letters.each do |let|
    print "  " + let.to_s + " "
  end
  puts ""
  @bingo_board[0].each do |num|
      print " " + num.to_s + " "
  end
  puts ""
  @bingo_board[1].each do |num|
      print " " + num.to_s + " "
  end
  puts ""
  @bingo_board[2].each do |num|
      print " " + num.to_s + " "
  end
  puts ""
  @bingo_board[3].each do |num|
      print " " + num.to_s + " "
  end
  puts ""
  @bingo_board[4].each do |num|
      print " " + num.to_s + " "
  end
  puts ''
end
# end of class
end

# Refactored Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board # 5 x 5 Array
    @letters = [:B, :I, :N, :G, :O]
  end

  def legal_board
    arrayB = Array(1..15).sample(5)
    arrayI = Array(16..30).sample(5)
    arrayN = Array(31..45).sample(5)
    arrayG = Array(46..60).sample(5)
    arrayO = Array(61..75).sample(5)

    for i in 0..4
      for j in 0..4
        case j
          when 0
            @bingo_board[i][j] = arrayB[i]
          when 1
            @bingo_board[i][j] = arrayI[i]
          when 2
            @bingo_board[i][j] = arrayN[i]
          when 3
            @bingo_board[i][j] = arrayG[i]
          else 
            @bingo_board[i][j] = arrayO[i]
        end
      end
    end
    # Free Space, yo
    @bingo_board[2][2] = ' X'
  end

  def legal_call
    letter = @letters.sample
    case letter
      when :B 
        number = rand(15) + 1
      when :I 
        number = rand(15) + 16
      when :N 
        number = rand(15) + 31
      when :G 
        number = rand(15) + 46
      else
        number = rand(15) + 61
    end
    puts letter.to_s + number.to_s
    check(@letters.index(letter), number)
  end

  def call
    letter = @letters.sample
    number = rand(100) + 1
    puts letter.to_s + number.to_s
    # pass ball to checker
    check(@letters.index(letter), number)
    return letter.to_s + number.to_s
  end

def check col, num
  for i in 0..4
    @bingo_board[i][col] == num ? @bingo_board[i][col] = ' X' : nil
  end
end

def display_column(col)
  puts @letters[col].to_s
  for i in 0..4
    puts @bingo_board[i][col]
  end
end

def display_board
  board_line = "\n------------------------"
  puts board_line
  @letters.each do |let|
    print " " + let.to_s + " | "
  end
  puts board_line
  for i in 0..4
    for j in 0..4
      print @bingo_board[i][j].to_s + " | "
    end
    puts board_line
  end
end
# end of class
end

#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

game_over = false
new_game = BingoBoard.new(board)
puts "**************************************"

until game_over 
  puts "BINGO™ Game Menu"
  puts "1. Display Board"
  puts "2. Call"
  puts "3. Display Column"
  puts "4. Exit"
  puts "5. Create Legal Board"
  puts "6. Legal Call"
  print "Enter Selection: "
  user_action = gets.chomp.to_i
  case user_action
    when 1 then
      new_game.display_board
    when 2 then
      new_game.call
    when 3 then
      print "\nEnter Column: "
      my_col = gets.chomp()
      new_game.display_column(my_col.to_i)
    when 4
      puts "GOOD BYE!"
      game_over = true
    when 5
      new_game.legal_board
    when 6
      new_game.legal_call
  end
end

#Reflection
=begin

How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?

> It was not difficult to pseudocode for this challenge, I think my style is improving and it 
  definitely gives me a good starting point for coding. Even if the final product is different from
  the pseudocode steps, I feel that it is beneficial. 

What are the benefits of using a class for this challenge?

> The two biggest benefits are having methods that will do the same thing over and over again,
  such as generating a "call" or displaying the board. By having the board numbers as class attributes,
  we are able to easily check for matches.

How can you access coordinates in a nested array?

> nested_array[i][j] - i selects the array, j selects the element of the selected array

What methods did you use to access and modify the array?

> brackets and equals signs

Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?

> Array#sample(n) - returns n random elements from an array

How did you determine what should be an instance variable versus a local variable?

> Anything related to the actual board was an instance variable and simple rows and columns were able
  to be local variables.

What do you feel is most improved in your refactored solution?

> The check method which I reduced to three lines. Also, I was able to generate a legal Bingo board and 
  generate "legal" calls.

=end




