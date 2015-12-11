# Calculate the mode Pairing Challenge

# I worked on this challenge with Chris Wong

# I spent 1 hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# input: Array of numbers or strings
# output: Array of the most frequent values if only one frequent value returns single array
# Steps: 
# Create new hash
# Convert Array elements to Hash Key.
# Assign default hash value to key
# iterate over each hash with an if loop.
# if each hash key is the same as the array element value, add 1 to the hash value.
# Pull biggest hash values out and put hash key into array


# 1. Initial Solution
#def mode(array)
#  h = array.each_with_object(Hash.new(0)) do |item, list|
#    list[item] += 1
#  end
#  big_count = 0
#  h.each_value do |value|
#    if big_count < value
#      big_count = value
#    end
#  end
#  a = []
#  h.each_pair do |key,value|
#    if value == big_count
#      a.push(key)
#    end
#  end
#  a
#end



# 3. Refactored Solution
def mode(array)
  h = array.each_with_object(Hash.new(0)) do |item, list|
    list[item] += 1
  end
  a = []
  h.each {|k, v| a.push(k) if v == h.values.max}
  a
end



# 4. Reflection

####Which data structure did you and your pair decide to implement and why?
#
# => We used a hash along a final array to complete the method definition. 
# => We chose to use the hash, since it allowed us to use a unique key for each value and use its paired value to act as a counter for the numnber of times the element appears in the original array.
# => Then we chose to use an array at the end, since it is the required output.
#
####Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?
#
# => We worked really diligently to break this problem down into very small steps. We eventually had to change our code to fit the method better logically, but the pseudocode was a great guide for us to start off with.
# 
####What issues/successes did you run into when translating your pseudocode to code?
#
# => One success was since we were following the pseudocode, we found that our original logic for the pseudocode could actually be better simplified with one step, instead of several.
# => We ran into one problem where one step actually turned into a multi-step logic puzzle in itself. We were able to manage the process in the end by thinking it through.
#
####What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
#
# => We used each_with_object to create a hash using the original elements as hash heys. This was a really useful method, with many other different possible uses too.
# => .each was a useful one since it allowed us to simply iterate through the hash.
# => We also used .values and .max to isolate the highest values in the hash to create out outputted array using .push.
#
