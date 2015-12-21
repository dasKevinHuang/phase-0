#Attr Methods

# I worked on this challenge [by myself, with:]

# I spent [#] hours on this challenge.

# Pseudocode

# Input: A string that repesents my name
# Output: A string that gives a greeting with my name
# Steps:
# => Create a namedata class that holds an instance variable that is my name in a string
# =>    Allow for the instance variable to be used by other classes by using an attr_reader
# => Create a Greetings class that will take the data from NameData class
# => Interpolate a greeting string that uses the name from the NameData class

class NameData

	attr_reader :my_name

	def initialize
		@my_name = "Kevin Huang"
	end

end


class Greetings
	attr_reader :greeting
	attr_reader :name 

	def initialize 
		@name = NameData.new
	end

	def hello
		puts "Hello #{@name.my_name}! How wonderful to see you today "
	end
end

greet = Greetings.new
greet.hello


# Reflection
### What are these methods doing?
#
# => The methods are creating variables for a profile of a person.
# => The methods also allow for changes to those attributes.
# => Since it uses instances variables for those attributes, any changes will be saved across uses of the class.
#
### How are they modifying or returning the value of instance variables?
#
# => They are using the argument being passed onto the method and assigning it to the value of the instance variable being modified.
#
### What changed between the last release and this release?
# 
# => This release removed the what_is_age method and replaced it with an attr_reader accessor.
#
### What was replaced?
#
## => This release removed the what_is_age method and replaced it with an attr_reader accessor.
#
### Is this code simpler than the last?
#
# => It is simpler than the last, since now you can retrive the instance variable @age, by simply calling for the #age method.
#
### What changed between the last release and this release?
#
# => This release removed the change_my_age method and added a attr_writer accesssor for the @age variable.
#
### What was replaced?
#
# => The change_my_age method was replaced by an attr_writer accessor.
#
### Is this code simpler than the last?
#
# => Yes it makes the code simpler by reducing the need to write an additional method for accessing and changing the @age variable.
#
#What is a reader method?
#
# => A reader method is a method that allows you to access and read a specific variable's value within a method in a class.
#
#What is a writer method?
#
# => A writer method is a method that allows you to access and update the value of a specific variable within a class.
#
#What do the attr methods do for you?
#
# => attr methods simplify the process of writing writer and reader methods, by allowing you to simply use the name of the instance variable as the name of the method itself.
# => Depending on the attr method you choose to apply to an instance variable, you can either read, write or do both to an instance variable in a class.
#
#Should you always use an accessor to cover your bases? Why or why not?
#
# => Not always, since there may be instances where it may not be necessary to use a specific instance variable and keep it private within the class.
# => It will be up to the developer to decide whether or not an accessor is necessary.
#
#What is confusing to you about these methods?
#
# => I'm not confused about these methods. However I think its very interesting how we can use classes to access other classes' attributes.
#