# Die Class 2: Arbitrary Symbols
# By Kevin Huang

# I worked on this challenge by myself.
# I spent 1 hours on this challenge.

# Pseudocode

# Input: An array of letters representing the ides of a dice or dreidel
# Output: The number of sides or one of the sides randomly.
# Steps:
# => If the array is an empty array, raise an ArgumentError.
# => Else, then initialize the class by accepting the array of letters 
# => Store the size of the array into an instance variable.
# => Store the array itself into an instance variable so that it can be used by the roll method later.
# => Return the instance variable for the sides method.
# => For the roll method, return the array element that corresponds to a random number minus one starting from 1 to the instance variable.


# Initial Solution

class Die
  def initialize(labels)
  	if labels.size == 0
  		raise ArgumentError.new("Invalid Array - Array cannot be empty.")
  	else
  		@sides = labels.size
  		@labels = labels
  	end
  end

  def sides
  	@sides
  end

  def roll
  	@labels[rand(@sides)]   #Randomly generates an index number greater or equal to 0, and less than @sides.
  end
end

# Refactored Solution

## Note: I believe the initial solution is already fairly simplified and clean.
## For the refactor, I simply added some spaces in the @labels index for the #roll method,
## to help with readability.

class Die
  def initialize(labels)
  	if labels.size == 0
  		raise ArgumentError.new("Invalid Array - Array cannot be empty.")
  	else
  		@sides = labels.size
  		@labels = labels
  	end
  end

  def sides
  	@sides
  end

  def roll
  	@labels[ rand(@sides) ]
  end
end



# Reflection by Kevin Huang
#### What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
#
# => The difference between this die class and the first die class we created was that this class accepts an array.
# => I don't think that the logic had to change very much for this die class to work.
# => In fact, I think that working with the array made the random number generator a bit easier to work with, since it works from 0 and up.
#
#### What does this exercise teach you about making code that is easily changeable or modifiable? 
#
# => It taught me that having previously written code can make it much easier to write code for programs that might be similar in function.
# => Having already done the first die class, doing this second die class was a breeze.
# => All I had to do was modify the logic to accommodate an array that holds the sides themselves.
#
#### What new methods did you learn when working on this challenge, if any?
#
# => No new methods were necessary for this challenge. The argument error syntax was already given in the last week's challenges.
# => Since rand was already taught last week, this die class challenge was a review for the most part.
#
#### What concepts about classes were you able to solidify in this challenge?
#
# => I think the concept of instance variables was solidified in this challenge.
# => Since we were working with an array that held the side values themselves, it was critical to create an instance variable using that array that could be used by the other class methods.
#