# Pad an Array

# I worked on this challenge with Jordan Fox

# I spent 1 hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input? given array, array size, possible value to pad
# What is the output? (i.e. What should the code return?)
#the given array in the min size
# What are the steps needed to solve the problem?
# Compare size of given array with min_size
# if array >= min_size, return array
# else pad array with nil or given value

# 1. Initial Solution
##def pad!(array, min_size, value = nil) #destructive
##  if array.length >= min_size
##    return array
##  else
##    count = min_size - array.length
##    count.times do 
##      array.push(value)
##    end
##  end
##  return array
##end
##

##def pad(array, min_size, value = nil) #non-destructive
##  temp_array = []
##  array.each {|x| temp_array.push(x)}
##  if temp_array.length >= min_size
##    return temp_array
##  else
##    count = min_size - temp_array.length
##    count.times do 
##      temp_array.push(value)
##    end
##  end
##  return temp_array
##end


# 3. Refactored Solution
def pad!(array, min_size, value = nil) #destructive
  if min_size == 0 || array.size >= min_size
    array
  else
  array.concat(Array.new(min_size - array.size, value))
  end
end

def pad(array, min_size, value = nil) #non-destructive
  temp_array = array.clone
  pad!(temp_array, min_size, value)
end


# 4. Reflection
####Were you successful in breaking the problem down into small steps?
#
# => Yes! We were able to break down the problem into small steps to make writing the program easier.
#
####Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
#
# => Yes, since we broke down the basic steps of the program, it was fairly simple to translate it into code.
# => The main difficulties were that we had were because we did not realize that assigning an array value of another array (array1 = array2), links the two arrays together.
# => Normally with other programming languages this doesn't happen, so it was a bit surprising to us when we encountered this error.
# => We were able to successfully circumvent this challenge by figuring out a solution to copying array contents to another array.
#
####Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
#
# => Yes our initial solution was successful at passing the tests. 
#
####When you refactored, did you find any existing methods in Ruby to clean up your code?
#
# => We found that concat cleaned up the padding method quite a bit. We also realized that we could use pad! inside pad to make the methods cleaner. #clone was also another one that made copying arrays easier.
#
####How readable is your solution? Did you and your pair choose descriptive variable names?
#
# => We think our solution - both of them, the long-form and the refactored solutions - are quite readable. We chose to use temp_array as our variable name for the pad method to make it easy to follow which array was being altered.
#
####What is the difference between destructive and non-destructive methods in your own words?
#
# => Destructive methods change an object that is being passed through the method as an argument. This causes the object to be different after the method is finished.
# => Whereas, non-destructive methods do not alter any objects being passed through as an argument.
#