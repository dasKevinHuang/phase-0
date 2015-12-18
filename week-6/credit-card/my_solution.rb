# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

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