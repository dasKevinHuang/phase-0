# OO Basics: Student


# I worked on this challenge by myself.
# This challenge took me 1 hours.


# Pseudocode
# Create a students array with 5 student objects
# Each student will have a first_name and 5 test scores between 0 and 100 when created.
# The first student should be named Alex with scores of [100,100,100,0,100]
#
# Create a method to average the scores for the student object
# => input: none (uses instance variable @scores)
# => output: average of the scores
# => steps:
# => create a sum variable and set it to 0
# => add up each score in the score array to the sum variable
# => divide the sum (converted to a float) by the size of the scores array
#
# Create a method to assign a letter grade based on the average grade
# => input: none 
# => output: letter grade
# => steps:
# => In ascending order in intervals of 10, IF average is less than the interval limit (ie 60)
# => Then return the corresponding grade (ie "F"). Repeat for the rest of the letter grades until A.
#
# Write a linear search method that searches the student array for a first_name and return the position of that student in the array
# => input: students array, name as a string
# => output: position of the student in the array
# => steps:
# => For each value in the array, if the value is equal to the name being searched, return the index.



# Initial Solution

#class Student
#  attr_accessor :scores, :first_name
#
#  def initialize(name, score_array)   #Use named arguments!
#    @first_name = name
#    @scores = score_array
#  end
#
#  def average
#  	sum = 0
#  	@scores.each{|x| sum += x}
#  	sum.to_f / @scores.size
#  end
#
#  def letter_grade
#  	if average < 60
#  		"F"
#  	elsif average < 70
#  		"D"
#  	elsif average < 80
#  		"C"
#  	elsif average < 90
#  		"B"
#  	else
#  		"A"
#  	end	
#  end
#
#end
#
#def linear_search(arr, name)
#	arr.each_with_index{|v,i|
#		if v.first_name == name
#			return i
#		end
#	}
#	-1
#end
#
#students = [Student.new("Alex", [100,100,100,0,100]), 
#			Student.new("Jessica", [100,100,100,0,100]),
#			Student.new("Mark", [100,100,100,0,100]),
#			Student.new("Eric", [100,100,100,0,100]),
#			Student.new("Pam", [100,100,100,0,100])]

# Refactored Solution

class Student
  attr_accessor :scores, :first_name

  def initialize(name, score_array)   #Use named arguments!
    @first_name = name
    @scores = score_array
  end

   def average
   	@scores.reduce{|sum, i| sum + i}.to_f / @scores.size
   end

  def letter_grade
  	if average < 60
  		"F"
  	elsif average < 70
  		"D"
  	elsif average < 80
  		"C"
  	elsif average < 90
  		"B"
  	else
  		"A"
  	end	
  end

end

def linear_search(arr, name)
	arr.each_with_index{|v,i| v.first_name == name ? (return i): (return -1)}
end
 


 students = [Student.new("Alex", [100,100,100,0,100]), 
 			Student.new("Jessica", [100,100,100,0,100]),
 			Student.new("Mark", [100,100,100,0,100]),
 			Student.new("Eric", [100,100,100,0,100]),
 			Student.new("Pam", [100,100,100,0,100])]





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
