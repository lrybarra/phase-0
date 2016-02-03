# Your Names
# 1) Luis Ybarra
# 2) Ryan Nebuda

# We spent 2 hours on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, num_of_ingredients)
  # Menu of Baked Goods for DBC Bakery
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  
  # Error Check 

  unless library.has_key?(item_to_make)
    raise ArgumentError.new("#{item_to_make} Not Found")
  end

  # End Error Check

  # Calculate Serving Size
  serving_size = library[item_to_make]
  remaining_ingredients = num_of_ingredients % serving_size
  baked = num_of_ingredients / serving_size
  
  suggested_baked_good = ""
  
  return_string = "Calculations complete: Make #{baked} of #{item_to_make}"
  
  # Check remaining ingredients
  if remaining_ingredients == 0
    return return_string
  elsif remaining_ingredients >= 5
    suggested_baked_good = "cake"
    return return_string + ", you have #{remaining_ingredients} leftover ingredients. Suggested baking items: #{suggested_baked_good}"
  else
    suggested_baked_good = "cookie"
    return return_string + ", you have #{remaining_ingredients} leftover ingredients. Suggested baking items: #{suggested_baked_good}"
    return remaining
  end
end

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("pie", 13)
p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection
=begin
What did you learn about making code readable by working on this challenge?

> It's sometimes possible to have too many lines of code doing something simple. While not always the 
  case, by reducing the number of lines of code, you increase readability. Also, it is important to
  add comments for everything from the why to the what. 

Did you learn any new methods? What did you learn about them?

> Hash#has_key?(key) - this returns true if the key exists in the given hash, false otherwise. It's a 
  nice concise method and very easy to implement.

What did you learn about accessing data in hashes? 

> There are different ways to do it. You can use a method or simply utilize bracket notation.

What concepts were solidified when working through this challenge?

> Refactoring, control flow, understanding someone else's code, collaboration, guidance, and custom
  error writing.
  
=end
