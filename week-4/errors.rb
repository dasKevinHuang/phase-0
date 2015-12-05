# Analyze the Errors

# I worked on this challenge by myself.
# I spent [1] hours on this challenge.

# --- error -------------------------------------------------------

#{}"Screw you guys " + "I'm going home." = cartmans_phrase

# 1. What is the name of the file with the error?
# The file with the error is named errors.rb
# 2. What is the line number where the error occurs?
# The line where the error occurs is at line 8.
# 3. What is the type of error message?
# It is a syntax error.
# 4. What additional information does the interpreter provide about this type of error?
# The interpreter tells us that the '=' within the statement was unexpected, rather expecting end-of-input
# 5. Where is the error in the code?
# The error is indicated by the interpreter at the `=` sign between "I'm going home." and cartmans_phrase
# 6. Why did the interpreter give you this error?
# Variables cannot not be defined in this format in Ruby. 
#  The variable that is going to be defined must be written first, then with the `=` followed by its arguments.
#  The corrected code should read cartmans_phrase = "Screw you guys " + "I'm going home."
# --- error -------------------------------------------------------

#def cartman_hates(thing)
#  while true
#    puts "What's there to hate about #{thing}?"
#end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# The file with the error is named errors.rb
# 2. What is the line number where the error occurs?
# The line where the error occurs is at line 185.
# 3. What is the type of error message?
# It is a syntax error.
# 4. What additional information does the interpreter provide about this type of error?
# The interpreter tells us that there was an unexpected end of input, meaning there was no input, when it expected one.
# 5. Where is the error in the code?
# The error lives at the end of this entire file because the interpreter is failing to find the necessary input anywhere to end the file.
# 6. Why did the interpreter give you this error?
# Because the method that is being defined is missing a way to end the while loop, causing the whole program to be stuck in an infinite loop.
#To fix it, the `while true` statement should be removed.

# --- error -------------------------------------------------------

#south_park

# 1. What is the line number where the error occurs?
# The error occurs at line 49.
# 2. What is the type of error message?
# The error type is a NameError
# 3. What additional information does the interpreter provide about this type of error?
# It states that the variable for `south_park` was undefined.
# 4. Where is the error in the code?
# The error lies in the `south_park` statement.
# 5. Why did the interpreter give you this error?
# THe interpreter gives this error because the variable was not defined at any given value.
# In order to fix the code, you would have to give it a value, such as `south_park = 100`

# --- error -------------------------------------------------------

#cartman()

# 1. What is the line number where the error occurs?
# The error occurs at line 65.
# 2. What is the type of error message?
# The error is a NoMethodError.
# 3. What additional information does the interpreter provide about this type of error?
# The interpreter also tells us that `cartman` is an undefined method.
# 4. Where is the error in the code?
# The error is in `cartman`
# 5. Why did the interpreter give you this error?
# The interpreter gave us this error because the method is not already defined. 
# The statement attempts to call the method `cartman()`, however is unable to since it hasn't been defined yet in the code.

# --- error -------------------------------------------------------

#def cartmans_phrase
#  puts "I'm not fat; I'm big-boned!"
#end

#cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
# The error occurs at line 81 and 85
# 2. What is the type of error message?
# The error is an Argument error.
# 3. What additional information does the interpreter provide about this type of error?
# The interpreter states that there is a wrong number of arguments stated for the method `cartmans_phrase`
# 4. Where is the error in the code?
# The error is inside of the method definition for `cartmans_phrase`
# 5. Why did the interpreter give you this error?
# The interpreter gave us this error because `cartmans_phrase` is defined as not being able to pass any arguments (0).
# To fix this, there should be another parameter stated in the method definition, or the argument can be removed from the method call.

# --- error -------------------------------------------------------

#def cartman_says(offensive_message)
#  puts offensive_message
#end

#cartman_says

# 1. What is the line number where the error occurs?
# => The error occurs on line 101 and 105
# 2. What is the type of error message?
# => The error type is an Argument error.
# 3. What additional information does the interpreter provide about this type of error?
# => The interpreter states that there is a wrong number of arguments for the method being called.
# 4. Where is the error in the code?
# => The error is happening within the method definition, when it is called.
# 5. Why did the interpreter give you this error?
# => It gave this error because the number of arguments set for the method to pass is 1.
# => When the method was called at the end of the code, it was improperly written without an argument (0 arguments).



# --- error -------------------------------------------------------

#def cartmans_lie(lie, name)
#  puts "#{lie}, #{name}!"
#end

#cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
# => The error occurs on line 123, and 127.
# 2. What is the type of error message?
# => The type of error is an Argument error.
# 3. What additional information does the interpreter provide about this type of error?
# => The interpreter states that there is a wrong number of arguments being passed to the method, (1 for 2).
# 4. Where is the error in the code?
# => The error lies within the method call (with 1 argument), and the method definition (with 2 arguments)
# 5. Why did the interpreter give you this error?
# => The interpreter gave this error because the wrong number of arguments is being passed to the method.
# => The method is defined as taking in two arguments, so it needs to have two when it is called.

# --- error -------------------------------------------------------

#5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
# => The error occurs at line 143
# 2. What is the type of error message?
# => The type of error message is a Type Error.
# 3. What additional information does the interpreter provide about this type of error?
# => The interpreter states that a string cannot be coerced into a fixed number.
# 4. Where is the error in the code?
# => The error occurs at the `*`
# 5. Why did the interpreter give you this error?
# => The interpreter gave this error because you conduct a multiplication operation between a string and a number.
# => This is why a type error occurs. The data being multiplied must be number types.

# --- error -------------------------------------------------------

#amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
# => The line number is 159.
# 2. What is the type of error message?
# => The type is a Zero Division Error
# 3. What additional information does the interpreter provide about this type of error?
# => The interpreter states that the code attempted to divide by 0.
# 4. Where is the error in the code?
# => The error is at the division symbol `/`.
# 5. Why did the interpreter give you this error?
# => The interpreter gave this error because the code attempts to divide by 0, which is undefined.
# => The code needs to multiply by any other number.

# --- error -------------------------------------------------------

require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# => The error is on line 176.
# 2. What is the type of error message?
# => The type of error is a Load Error.
# 3. What additional information does the interpreter provide about this type of error?
# => The interpreter states that it cannot load such file.
# 4. Where is the error in the code?
# => The error is on the method name `require_relative'.
# 5. Why did the interpreter give you this error?
# => Because the file "cartmans_essay.md" does not exist, so it could not be loaded.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.
=begin

CHALLENGE 4.4 REFLECTION BY KEVIN HUANG

1. Which error was the most difficult to read?

I didn't find any of the errors to be difficult to read to be honest. 
The exceptions that are displayed by the Ruby interpreter are very clear and make sense within the context of the code.

2. How did you figure out what the issue with the error was?

To find out the issue with a line of code, I would look at the error message and then use the details from the exception to identify the error within the code.
From there, it's a matter of looking at the right part in the code that is bugged.

3. Were you able to determine why each error message happened based on the code? 

Yes I was - it made sense when and why the errors would happen, even if you didn't look at the error message.
This is because the guidelines for writing Ruby code were not followed within the buggy code.

4. When you encounter errors in your future code, what process will you follow to help you debug?
I will first look at the error message and the exception. Then I will look at the specific line of code that is causing the error.
From there I will conclude what is causing the error specifically and then attempt to refactor the code to make it functional.

	
=end