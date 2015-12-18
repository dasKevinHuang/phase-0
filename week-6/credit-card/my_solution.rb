# Class Warfare, Validate a Credit Card Number
# By Kevin Huang

# I worked on this challenge with Todd Seller
# I spent [2] hours on this challenge.

# Pseudocode

# Input:Accepting a 16 digit integer
# Output: True or false depending on validity of credit card
# Steps:
# 1. Accept integer and check to make sure it is 16 digits long and give error message if not
# 2. Create array and double the value of every even index
# 3. Iterate through the array and sum the values of single digits and add sum of split double digits
# 4. Check to see if sum is evenly divisible by 10
# 5. Return true or false


# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits


### class CreditCard
###   
###   def initialize(card_num)
###     raise ArgumentError.new("This is not a valid 16 digit credit card number") if card_num.to_s.size != 16
###     @card_num = card_num
###   end
###   
###   def create_array(card_num)
###     @card_num.to_s.split("")
###   end
###  
###   def double_even_index(card_array)
###     card_array.map!.with_index do |value, index|
###       if index.even? 
###         (value.to_i) * 2
###       else
###         (value.to_i)
###       end
###     end
###   end
###  
###   def sum_values(card_array)
###     sum = 0
###     card_array.each_with_index do |value, index|
###       if value > 9
###        sum += 1 + (value % 10)
###      else
###        sum += value
###      end
###     end
###     sum
###   end
###  
###  def final_check(sum)
###     sum % 10 == 0
###   end
###   
###   def check_card
###     card_array = create_array(@card_num)
###     double_even_index(card_array)
###     sum = sum_values(card_array)
###     final_check(sum)
###   end
### end


# Refactored Solution
class CreditCard

  def initialize(card_num)
    raise ArgumentError.new("This is not a valid 16 digit credit card number") if card_num.to_s.size != 16
    @card_array = card_num.to_s.split("")
  end

  def double_even_index
    @card_array.map!.with_index {|v, i| i.even? ? v.to_i * 2 : v.to_i }
  end
 
  def sum_values
    @sum = 0
    @card_array.each {|v| v > 9 ? @sum += 1+(v % 10): @sum += v}
    @sum
  end
  
  def check_card
    double_even_index
    sum_values
    @sum % 10 == 0
  end
end


# Reflection
### What was the most difficult part of this challenge for you and your pair?
#
# => I think the most difficult part of this challenge for me and my pair was figuring out the logic of the program itself.
# => There were many different approaches we could have taken, and we discussed at length, which logical processes would best serve the purposes of this challenge.
#
#
### What new methods did you find to help you when you refactored?
#
# => We actually did not have to find any new methods to help us refactor. Since our logic was very sound with our initial solution,
# => we simply had to rewrite most of the code in a cleaner notation.
#
#
### What concepts or learnings were you able to solidify in this challenge?
#
# => I think that we were able to strengthen our ability to write pseudocode and think about writing code more logically.
# => Since this challenge was focused on using a specific step-by-step process to validate the numbers, logic was a central part to finishing this challenge.
# => Overall, I think we did a great job in tackling this challenge!
#