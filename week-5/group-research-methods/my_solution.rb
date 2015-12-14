# Research Methods

# I spent 1 hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution - Marshall Sosland

# Problem 1 for arrays:
# the original solution to array_finding
#used grep from rubyist page 294
def my_array_finding_method(source, thing_to_find)
  var = thing_to_find
  source.grep(/#{var}/)
end

#an alternate solution to array_finding
#using select and the =~ matching operator
# def my_array_finding_method(source, thing_to_find)
#   var = thing_to_find
#   source.select {|elem| elem =~ /#{var}/}
# end

#the following incorrect solution only works if all the elements of the source are strings, because the include? method does not work with nums:

# def my_array_finding_method(source, thing_to_find)
#   array2 = source.select {|word| word.include?(thing_to_find)}
# end

# Problem 1 for hashes
# my initial long solution :-(  :-(
def my_hash_finding_method(source, thing_to_find)
  array = []
  source.select do |key, value|
    if source[key] == thing_to_find
      array << key
    end
  end
  array
end

#my refactored solution
def my_hash_finding_method(source, thing_to_find)
  source.select {|key, value| source[key] == thing_to_find }.keys
end

# Identify and describe the Ruby method(s) you implemented.
# I used grep for the array solution. It was used in an example in the Rubyist (page 294) for pattern matching. However, I had a hard time understanding all of grep's abilities when I read about it so I wanted to find other ways to solve the problem. My second array solution (commented out) selected elements that contained the thing_to_find based on the =~ operator for pattern matching. And the third way (commented out) used the include? method, which failed because some of the array elements are numbers.
#In the hashes solution, I originally could not get select to work because it would always return key value pairs, not just keys. So i wrote out a long solution where I pushed keys to an array... Then i refactored it correctly by using the select method, but adding the .keys method to the end to only select the keys!
#


# Person 2 - Kevin Huang

def my_array_modification_method!(source, thing_to_modify)
  source.map! {|x| x.is_a?(Integer) ? (x + thing_to_modify): x}
end

def my_hash_modification_method!(source, thing_to_modify)
  source.each {|k,p| p.is_a?(Integer) ? ( source[k] = p + thing_to_modify ): source[k]}
end

# Identify and describe the Ruby method(s) you implemented.
#
# => Methods implemented:

# => .is_a?
# => # .is_a?() checks if a variable is a certain data type and returns a boolean appropriately.
# => # For this method, I used .is_a to check if the array/hash values were Integers, to verify that the method would change an integer.

# => .map!
# => # .map! is a destructive method that will iterate over each element of the array and change the values according to the code inside its internal block.

# => .each
# => # .each is a method that allows you to iterate over each key-value pair within a hash.
# => I used this method to iterate over each pair inside the hash - since it allows you to address the hash value directly, you can use this method to destructively change the value of the original hash.


# Person 3 - Katie Meyer
# ARRAY
def my_array_sorting_method(source)
  source.sort_by { |x| x.to_s }
end

# FOR TESTING ARRAY
# p my_array_sorting_method(i_want_pets)
# p i_want_pets
# p my_array_sorting_method(i_want_pets) == i_want_pets

# HASH
def my_hash_sorting_method(source)
  source.to_a.sort_by { |x, y| y }
end

# FOR TESTING HASH
# p my_hash_sorting_method(my_family_pets_ages)
# p my_family_pets_ages
# p my_hash_sorting_method(my_family_pets_ages) == my_family_pets_ages


# Identify and describe the Ruby method(s) you implemented.

# #to_s is needed in the array solution to make the integers strings so that they could be compared and sorted with the other strings.

# At first I thought #map was needed in the array solution to make it non-destructive (so that the method does not change the original array permanently). I found that if I didn't ask the method to return "source" before I ended it, I did not need #map or a new variable for the modified array.

# #to_a is needed in the hash solution to transfer the hashes into arrays within the array. Again, #map and reassigning the variable were not needed for it to be non-destructive.

# #sort_by is what I spent most of my time trying to understand. #sort does not work, but #sort_by does. Why? Long story short - The method blocks above take one parameter, not two.
# Above I used { |x| x.to_s } where x.to_s is the only parameter and in { |x, y| y }, y is the only parameter. The method will iterate through all the items, sorting them based on the value of x for the array method and y for the hash method.
# An example of #sort taking two parameters would be { |x, y| x > y} --> x and y are the parameters being compared. The method would iterate through this comparing process for each of the items and they would be sorted.
# I found conflicting opinions for which is better to use in certain situations, some say that #sort is more efficient while others find #sort_by to be more efficient. I suppose it depends on the context of the problem.

# To grasp this, I read the Rubyist 10.8, looked on the Ruby Docs for Enumerables (didn't find the explanations very helpful), two other blogs (the top two when Googling "ruby sort vs sort_by"), and through StackOverflow questions to try to understand the difference between them. It was only after looking through all of that when it started to click.

# I learned some interesting things about the Comparable module in the Rubyist 7.6 that helped me grasp the significance of the built-in comparator method (<=>). Worth diving into when creating new classes.

# Person 4 - Dave Spivey
def my_array_splitting_method(source)
  new_array = []
  new_array << source.select { |i| i.is_a? Integer }
  new_array << source.select { |i| i.is_a? String }
  new_array
end

def my_hash_splitting_method(source, age)
  new_array = []

  new_array << source.select { |k, v| v <= age }.to_a
  new_array << source.select { |k, v| v > age }.to_a

  new_array
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#
def my_array_modification_method!(source, thing_to_modify)
  source.map! {|x| x.is_a?(Integer) ? (x + thing_to_modify): x}
end

def my_hash_modification_method!(source, thing_to_modify)
  source.each {|k,p| p.is_a?(Integer) ? ( source[k] = p + thing_to_modify ): source[k]} # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
#
# => I implemented the methods for modifying only the internal numbers within an array or hash.
# => You can use these methods by passing the array or hash to the specifc method, then the number you'd like to add to each internal number.
# => When you call the specific array or hash method using these parameters, the method will modify the numeric values in the data structure by the amount you wanted to add by.
#
# => For the Ruby methods that were called within each method I defined, it was pretty essential to use the method .is_a?, because this allowed me to check if each element or value was an Integer.
# => Since .is_a? returns a boolean, it allows the modification method to know whether to proceed with a change or not, depending on if it returns true or not.

# => Secondly, iterator methods like .map! and .each were essential in both array and hash modification methods to be able to iterate destructively over each data structure.
# => Since when you use .each over an array, it acts as if it creates a new array, .map! has to be used instead to change the original array itself.
# => Then, since .each allows you to refer to pair values within a hash, you can actually use .each to change the values in a hash directly when iterated.

# => Overall, when combined with flow control structures (mainly if/else), .is_a?, and .map!/.each make for the right mix of methods for the correct modification method definition.


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
#
# => I learned quite a lot about the subtle properties of different Ruby methods over arrays and hashes.
# => It's quite surprising at first to learn about the different outcomes of iterators over arrays or hashes 
# => - but it makes sense when you understand the properties of each data structure a little deeper with practice.

# => I thought it was good practice to research methods on our own and explain our research with the rest of our team!
# => I felt that being deliberate about each method that we used in a team setting was a good way to ensure that we took better care to understand our own code and to make sure that it was readable to others as well.
#