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
