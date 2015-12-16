# Die Class 1: Numeric
#
# Written by Kevin Huang
#
# I worked on this challenge by myself

# I spent [] hours on this challenge.

# 0. Pseudocode

# Input: An integer of the number of sides of a die
# Output: Number of sides of a die or a random number
# Steps: 
# Check that there is at least 1 side to the dice, if there is less than 1 side, give an error message.
#


# 1. Initial Solution

#class Die
#  def initialize(sides)
#    if sides < 1
#    	raise ArgumentError.new("Sides must be at least 1")
#    end
#    @sides = sides
#  end#

#  def sides
#    @sides
#  end#

#  def roll
#    rand(@sides) + 1
#  end
#end



# 3. Refactored Solution

class Die
  def initialize(sides)
  	sides < 1 ? (raise ArgumentError.new("Sides must be at least 1")): @sides = sides
  end

  def sides
    @sides
  end

  def roll
    rand(1..@sides)
  end
end



# 4. Reflection
# What is an ArgumentError and why would you use one?
#
# An ArgumentError is an error message that is given when one of the arguments provided is invalid.
# You would use an ArgumentError to tell the person calling the method that their argument is invalid and they need to correct it in order for the program to run properly

# What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
# I used the rand method for this challenge. It was quite easy to implement. I was able to make the rand method easier to understand with my refactored form of the method.

# What is a Ruby class?
# A class is a blue print for the individual objects.

# Why would you use a Ruby class?
# It creates clean and easy to read code, as well as helping the process of writing code become easier by having a blueprint of objects already pre-written.

# What is the difference between a local variable and an instance variable?
# A local variable is only usable within the block of code it lives in
# An instance variable is visible anywhere there is an instance of the class where the variable was defined.

# Where can an instance variable be used?
# An instance variable can be used anywhere within the instance of its class.