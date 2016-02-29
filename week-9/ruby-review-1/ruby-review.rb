
# 
# 
# 
# OO Basics: Student


# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.


# Pseudocode



# Initial Solution

class Student
  attr_accessor :scores, :first_name, :letter_grade

  def initialize(first_name, scores)   #Use named arguments!
    @first_name = first_name
    @scores = scores
  end
  
  def average
    sum = @scores.inject {|sum, x| sum + x}
    avg = sum/@scores.length
    if avg >= 90
      @letter_grade = "A"
    elsif avg >= 80
      @letter_grade = "B"
    elsif avg >= 70
      @letter_grade = "C"
    elsif avg >= 60
      @letter_grade = "D"
    else
      @letter_grade = "F"
    end
    return avg
  end
  
  
end

student1 = Student.new("Alex", [100,100,100,0,100])
student2 = Student.new("Jordan", [23,45,100,30,99])
student3 = Student.new("Pippen", [33,95,23,75,64])
student4 = Student.new("Rodman", [91,10,73,0,91])
student5 = Student.new("Rose", [1,55,66,77,88])
students = [student1, student2, student3, student4, student5]

=begin
Write a linear_search method that searches the student array for a student's first_name and returns the position of that student if they are in the array. If the student is not in the array then the method should return -1.
=end


def linear_search(array, name)
  array.each do |elem|
    if (elem.first_name == name)
      return array.index(elem)
    end
  end
    return -1
end

=begin
Write a binary_search (Links to an external site.) method that searches the student array for a student's first_name and returns the position of that student if they are in the array. If the student is not in the array then the method should return -1. You can write a iterative (or recursive, if you are comfortable with that) version of binary_search.


a <=> b :=
  if a < b then return -1
  if a = b then return  0
  if a > b then return  1
  if a and b are not comparable then return nil
=end
#sort_by! { |obj| block } → ary

def binary_search(array, name)
  if array.length == 0
    return - 1
  end
  array.sort_by {|obj| obj.first_name }
  midpoint_index = array.length/2
  if name == array[midpoint_index].first_name
    return midpoint_index
  elsif name < array[midpoint_index].first_name
    array = array.slice(0, midpoint_index)
  else
    array = array.slice(midpoint_index + 1, array.length - 1)
  end
    binary_search(array, name)
end

# Refactored Solution






# DRIVER TESTS GO BELOW THIS LINE
# Initial Tests:

p students[0].first_name == "Alex"
p students[0].scores.length == 5
p students[0].scores[0] == students[0].scores[4]
p students[0].scores[3] == 0


# Additional Tests 1:

p students[0].average == 80
p students[0].letter_grade == 'B'

# Additional Tests 2:

p linear_search(students, "Alex") == 0
p linear_search(students, "NOT A STUDENT") == -1

p binary_search(students, "Alex") == 0
p binary_search(students, "Alex")
p binary_search(students, "NOT A STUDENT") == -1



# Reflection  