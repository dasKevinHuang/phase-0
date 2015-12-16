
# Your Names
# 1)  Kevin Huang
# 2)  Andrew Kim

# We spent 1 hours on this challenge.

# Bakery Serving Size portion calculator.

###### Original Code #### (Scroll down for our refactored solution!)

#####  def serving_size_calc(item_to_make, num_of_ingredients)
#####    library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
#####    error_counter = 3#####  

#####    library.each do |food|
#####      if library[food] != library[item_to_make]
#####        error_counter += -1
#####      end
#####    end#####  

#####    if error_counter > 0
#####      raise ArgumentError.new("#{item_to_make} is not a valid input")
#####    end
#####    #line 11-21: figure out if the item_to_make input exists in the library#####  

#####    #amount of ingredients required to make the item
#####    serving_size = library.values_at(item_to_make)[0]
#####    remaining_ingredients = num_of_ingredients % serving_size
#####    #tells the number of remaining ingredients#####  

#####    case remaining_ingredients
#####    when 0
#####      return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}"
#####    else
#####      return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. Suggested baking items: TODO: MAKE THIS FEATURE"
#####    end
#####    #tells how many items can be made and suggesting other options for the remaining ingredients
#####  end

##### Refactored Solution ####

def serving_size_calc(item_to_make, num_of_servings)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  unless library.has_key?(item_to_make)
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end
  #line 11-21: figure out if the item_to_make input exists in the library

  #amount of ingredients required to make the item
  remaining_servings = num_of_servings % library[item_to_make]
  #tells the number of remaining ingredients  
  if remaining_servings == 0
    return "Calculations complete: Make #{num_of_servings / library[item_to_make]} of #{item_to_make}"
    #tells how many items can be made with no remaining ingredients
  else
    if remaining_servings == 6
      suggestion = "Cake and Cookie"
    elsif remaining_servings == 5
        suggestion = "Cake"
    else
        suggestion = "Cookie"
    end
    return "Calculations complete: Make #{num_of_servings / library[item_to_make]} of #{item_to_make}, you have #{remaining_servings} leftover servings. Suggested baking items:  #{suggestion}."
    #tells how many items can be made and suggesting other options for the remaining ingredients
  end
end

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 11)
# p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection

####  What did you learn about making code readable by working on this challenge?
#
# => I learned that it's important to make sure that the variables inside the methods are named in a fashion that makes sense!
# => When me and my pair were working through the original code, it was confusing because many of the variables were named in a way that did not make sense for the method's purpose
# => We were able to rename the variables and rework the code to make it much more readable.
#
####  Did you learn any new methods? What did you learn about them?
#
# => I learned about .values_at, which was used in a very inefficient way to create an array to access hash values. Basically, I learned that it creates arrays of hash values
# => but it should not be used for the means of accessing a hash value when you can simply write hash[key].
#
# => For the other methods, I was already familiar with many of the methods employed in our solution.
#
####  What did you learn about accessing data in hashes? 
#
# => I learned that it doesn't make sense to do it inefficiently!
# => The original code used .values_at to create an array of hash values - THEN it accessed the array with the appropriate index.
# => This is very inefficient compared to the regular way of accessing hash values by using they key : hash[key]
#
####  What concepts were solidified when working through this challenge?
#
# => I think that the process of refactoring code was solidified a bit more for me through this challenge.
# => When I was working with my pair, we realized how important it is to ensure that variables have names that make sense.