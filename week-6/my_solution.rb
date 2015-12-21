# Build a simple guessing game
# Written by Kevin Haung

# I worked on this challenge by myself
# I spent 1 hours on this challenge.

# Pseudocode
\
# Input: An integer that represents the answer for the guessing game
# Output: A symbol (:low or :high or :correct) for the #guess method, true/false for the #solved? method
# Steps:
# => Initialize the class with the integer `answer`.
# =>     Create an @answer instance variable assigned to the value of answer
# => Define a method called #guess that takes an integer `guess`
# =>     If the guess is less than the answer,
# =>       then assign an instance variable @guess as :low and return it
# =>     Else if the guess is greater than the answer,
# =>       then assign an instance variable @guess as  :high and return it
# =>     Else, then assign an instance variable @guess as  :correct and return it
# => Define a method called #solved?
# =>     If the last guess is equal to the symbol :correct
# =>       then return true
# =>     else, then return false


# Initial Solution

class GuessingGame
  def initialize(answer)
  	@answer = answer
  end

  def guess(guess)
  	if guess < @answer
  		@guess = :low
  	elsif guess > @answer
  		@guess = :high
  	else
  		@guess = :correct
  	end
  end

  def solved?
  	if @guess == :correct
  		true
  	else
  		false
  	end
  end
end

# Refactored Solution
#
# I refactored my initial solution by rewriting the #solved? method into one line
# =>  This way, the solution does not have to repeat itself, since the conditional will return a true/false regardless of the flow control.

class GuessingGame
  def initialize(answer)
  	@answer = answer
  end

  def guess(guess)
  	if guess < @answer
  		@guess = :low
  	elsif guess > @answer
  		@guess = :high
  	else
  		@guess = :correct
  	end
  end

  def solved?
  	@guess == :correct
  end
end




# Reflection by Kevin Huang

### How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
#
# => They represent the characteristics and actions of a real-world object by retaining the data and the actions of real-world objects.
# => In this challenge, the @guess instance variable represented a real-world guess,
# => and each method represented an action you would take in a real guessing game.
#
### When should you use instance variables? What do they do for you?
#
# => You should choose to use an instance variable when you think you may need to use a specific variable across methods in the same class.
# => They are especially important if you want a variable that will retain the value of the last time a specific class method was used.
# => Because of the way @guess was used in my solution in this challenge, it allows you to retain the value of the last time it was used across the solved? method.
#
### Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
#
# => Flow control allows you to use conditional statements to control the functionality of code.
# => To use flow control, you would use if/else, or loop statements accompanied by a specific condition you want to fulfill for the flow control structure to activiate.
# => I did not have any trouble using flow control in this challenge.
#
### Why do you think this code requires you to return symbols? What are the benefits of using symbols?
#
# => Since symbols are immutable, they give the added benefit of having property of retaining their value throughout the program.
# => Symbols are highly useful when specifying constants you may need to re-use in a program.
# => This code required you to return symbols, because the final #solved? method required the use of the previously used guess.
# => Since symbols are constant throguhout the program and are immutable, symbols worked well for this purpose by allowing the reading of the guess variable across methods and ensuring the same value across the both of them.
#