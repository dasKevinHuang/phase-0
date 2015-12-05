# variables-methods.rb written by Kevin Huang

# Full Name Greeting Program
puts "What's your first name?"
first_name = gets.chomp
puts "What's your middle name?"
middle_name = gets.chomp
puts "What's your last name?"
last_name = gets.chomp
puts "Hello " + first_name + " " + middle_name + " " + last_name + ", it's nice to meet you!"

#Bigger, better favorite number
puts "What is your favorite number?"
num = gets.to_i
better_num = num + 1
puts "Well, I think #{better_num.to_s} is a bigger and better number."

=begin
###############################################

Challenge 4.3 Reflection Section by Kevin Huang

###############################################

# Links to exercises
Return a formatted address: https://github.com/dasKevinHuang/phase-0/blob/master/week-4/address/my_solution.rb
Defining Math Methods: https://github.com/dasKevinHuang/phase-0/blob/master/week-4/math/my_solution.rb

###############################################
Reflection Questions

1. How do you define a local variable?

	To define a local variable, you would assign the variable a value by writing code that looks like `variable = 9`
	Such that the variable would now be defined with the value 9.

2. How do you define a method?

	To define a method, you would begin by starting the method definition with code written like: `def method_name(parameter)`
	The definition of the method itself would live in a block of code under this statement. All arguments executed within the method live in the block.
	The method definition is then closed with an `end` statement at the end.

3. What is the difference between a local variable and a method?

	A local variable is a variable (Some value that is stored) that is only accessible within its scope (the code block that it lives in).
	A method is a block of pre-written code that can be called to be executed.

	The difference is that the local variable lives within a block of code, while a method is a block of code in itself.
	Methods usually use local variables to pass arguments.

	Local variables are defined by using syntax such as `local_variable = "this is my new local variable"`
	Methods are defined by using syntax such as `def method(parameter)
	You can read further on my answers to Questions 1 & 2 for further detail.

4. How do you run a ruby program from the command line?

	To run a ruby program, you would type `ruby`, then the file name.
	An example of this would look like `ruby file_name.rb`. This will execute the ruby program within command line.

	You can even pass arguments to a ruby program while within command line by writing:
	`ruby file_name.rb code-here`

5. How do you run an RSpec file from the command line?

	To run an RSpec file from the command line, you would type `rspec`, then the file name, then the spec file.
	An example of this would look like `rspec my_solution.rb sample_spec.rb`

6. What was confusing about this material? What made sense?

	There wasn't really anything confusing about this material. Most of it was fairly basic and easy to understand.
	I'm glad we are reviewing this concepts before we move onto advance material so we can be on the same page.

=end