# Shortest String

# I worked on this challenge by myself

# shortest_string is a method that takes an array of strings as its input
# and returns the shortest string
#
# +list_of_words+ is an array of strings
# longest_string(list_of_words) should return the shortest string in +list_of_words+
#
# If +list_of_words+ is empty the method should return nil


# Your Solution Below
def shortest_string(list_of_words)
  # Your code goes here!
  value = list_of_words[0]

  if list_of_words.length == 0 
    return nil
  else
    list_of_words.each do |s|
      if s.length < value.length
        value = s
      end
    end
  end

  return value
end