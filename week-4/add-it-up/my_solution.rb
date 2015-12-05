# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge with Sabri Helal.

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: Array of Integers
# Output: Sum of the Integers inside the array
# Steps to solve the problem.
# For EACH integer in the array, add to the sum

# 1. total initial solution
def total(array)
  sum = 0
  array.each do |n|
   sum += n
  end
  sum
end


# 3. total refactored solution

def total(array)
  array.reduce(:+)
end

# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: Array of Strings
# Output: Sum of Strings in Array
# Steps to solve the problem.
# For EACH string in the array, add to the final result

# 5. sentence_maker initial solution
def sentence_maker(array)
  sum = ""
  array.each do |n|
    if array.last == n
      sum += n
    else
      sum += n + " "
    end
  end
  sum.capitalize! << "."
end


# 6. sentence_maker refactored solution
def sentence_maker(array)
  array.join(' ').capitalize! << "."
end
