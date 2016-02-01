

# Research Methods

# I spent 4 hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]

my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
   source.select!{|element| element.to_s.include?(thing_to_find)}
    return source
end

def my_hash_finding_method(source, thing_to_find)
  test = []
  source.each do |element|
    if element[1] == thing_to_find
      test.push(element[0])
    end
  end
  return test

end

# Identify and describe the Ruby method(s) you implemented.
# each: This method iterates over each element in the array. After calling the method
# you must call "do" and in between || any variable name which you'll be using to
# refer to the element you want the code to do something to. It is convinient to call
# it something meaningful.
# include?: This method will check if the string it is being called on includes, the
# argument passed to it. It does not work on numbers.
# select!: This destructive method will keep in the array whathever elements meet the
# criteria in the argument.
# push: This method adds an element to an array.
# to_s: Transforms whatever it is being called to into a string.


# Person 2
def my_array_modification_method!(i_want_pets, number)
    i_want_pets.each_index do |x|
    #ok, so now that's the item in the array, check if it's an integer
    if i_want_pets[x].is_a? Integer
    # now do this... change the value of the Integer
      
            i_want_pets[x] += number
    end
 end
end

my_array_modification_method!(i_want_pets, 2)

my_family_pets_ages = {'Zuko' => 2, 'Scout' => 5}

def my_hash_modification_method!(my_family_pets_ages, number)
#find out how to run each key and/or value in the hash
    my_family_pets_ages.each_key do |key|
    #Use the key to acces the value and add it to the number(which is the years)
        my_family_pets_ages[key] += number
        
    end
end

my_hash_modification_method!(my_family_pets_ages, 2)


#The Ruby method I used was the .each_index and .each_key I am still learning how those are different from the standard .each but the code won't work without them
#After I was able to select the element I wanted to modify I just had to write a statement to add the new variable 
#So I always need a test code to help me work step by step. I run the program almost everytime I make an edit. I also go back and look at code I've written before to see if that leads me somewhere.


# Person 3
def my_array_sorting_method(array)
  #I honestly found this on stack overflow after .map did not work and modified it to make it work for what I needed.
  return array.partition{|x| x.is_a? Integer}.map(&:sort).flatten
  #Initial working solution before I found partition (which failed):
  #return array.map { |item| item.to_s }.sort
end

def my_hash_sorting_method(hash)
   return hash.sort_by { |animal, age| age }
end

# Identify and describe the Ruby method(s) you implemented.
#I used .partition which will return two arrays, with the first array being true and second containing the rest (false).  To make sure the integers came first, I tested for that to evaluate to true so they would come first.  
#The .map will evaluate the item to true or false and decide which array to go to.  The reason (&:sort) is used is because the true array will be sorted and then the false array will be sorted individually.  Since these are two separate arrays, flatten is used to combine the two into one.


# Person 4
def my_array_deletion_method!(i_want_pets, letter)
  i_want_pets.delete_if { |item| item.to_s.include?(letter) }
end

def my_hash_deletion_method!(my_family_pets_ages, name)
  my_family_pets_ages.delete_if { |pet, _age| pet.include?(name) }
end

# Identify and describe the Ruby method(s) you implemented.
# The main obstacle was the error I was getting with include? method not being define for fixnum, meaning that because some items were numbers it wouldnt work. I had to turn them to strings in order for the code to run.
# accountability group how to use the methods.


# Person 5
def my_array_splitting_method(source)
  integer_array = Array.new
  string_array = Array.new
  
  source.each do |piece|
    if piece.is_a?(Integer)
      integer_array << piece
    else
      string_array << piece
    end
  end
  master_array = integer_array,string_array
  return master_array
end



def my_hash_splitting_method(source, age)
  younger = Array.new
  older = Array.new
  
  source.each do |name, years|
    if years <= age
      younger << [name, years]
    else
      older << [name, years]
    end
  end
  master_array = younger,older
  return master_array
end

# Identify and describe the Ruby method(s) you implemented.
#   I used .is_a? to determine if the array item is an integer in the array splitting method. This simply checks if the item is an integer.
#   In addition, I used .each to iterate over every item in both groups (arrays and hashes). The .new method was used to create empty arrays in both methods.
#   Originally, I used .push to add items into the arrays, but changed these to << notation for ease of reading.


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
#
#
#


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
#
#
#
#

 