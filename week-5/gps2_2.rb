######### GPS 2.2 Reflection by Kevin Huang ########
#
#
####  What did you learn about pseudocode from working on this challenge?
#
# I learned that a good way to think about pseudocode is to think of how you would explain what you want your method to do to a regular non-technical person.
# Then try to break down into small easy-to-understand steps so that when you go back to your pseudocode, you can create a logical method from it.
#
####  What are the tradeoffs of using Arrays and Hashes for this challenge?
#
# I think using arrays would have the benefit of being a bit easier to handle, since they work in a very numerical and binary fashion with values and indices.
# Having equally sized arrays, one for item names and one for item quantities would probably work and be easy to handle with regular array methods.
# The downside to arrays however is that you would have to work with 2 of them, or a two dimensional array, in order for this to work. Whereas with a Hash, you only need one.
# Also hashes generally work better with qualitative objects like names for items. The benefit of using a hash in this instance is that it makes it convenient to access values using item names and the hash name.
#
####  What does a method return?
#
# A method returns the last line of code that is executed within the method definition. Methods can return data or even output content.
#
####  What kind of things can you pass into methods as arguments?
#
# You can pass any type of data into a method as an argument - strings, integers, floats, even arrays or hashes.
#
####  How can you pass information between methods?
#
# You can call methods within other methods in the same program. 
#
####  What concepts were solidified in this challenge, and what concepts are still confusing?
#
# This challenge helped me solidify some concepts about hashes for me. The syntax behind hashes were a bit fuzzy for me going into this challenge and I'm glad I was able to use this challenge to better familiarize myself with that aspect.
#


# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
# SPLIT the string with " " delimiter into hash keys
# Set default quantity for hash values
# print the list to the console
# output: Hash with the item names in the hash keys with default value

def create_list(items)
  # hash_items = Hash.new(0) # <--- this will be the object we use to collect the items
  items.split(" ").each_with_object(Hash.new(1)) do |item, list| # <--- ["carrots", "apples", "cereal", "pizza"]
    list[item] = 1
  end
end

puts "### create_list debug"
test_hash = create_list("carrots apples cereal pizza")
p test_hash
puts


# a = ["a", "b", "c", "d"]
# h = Hash[a.map {|x| [x, 1]}]

# a = ["a", "b", "c", "d"]
# a.map {|x| [x, 1]}

# p a.map {|x| [x, 1]}
# p Hash[[["a", 1], ["b", 1], ["c", 1]]]

# Method to add an item to a list
# input: item name and optional quantity
# steps: 
# CREATE hash key with the item and set the value to the optional quantity
# output: Hash key and value of item to be added

def add_item (hash, item, num)
  hash[item] = num
end

puts "### add_item debug"
test_hash = {}
add_item(test_hash, "kiwi", 5)
p test_hash
puts

# Method to remove an item from the list
# input: Item name
# steps: 
# Delete the hash key & value pair
# output: nil

def remove_item(hash, item)
  hash.delete(item)
end

puts "### remove_item debug"
remove_item(test_hash, "kiwi")
p test_hash
puts

# Method to update the quantity of an item
# input: Item name & new quantity value
# steps:
# Access the hash key value pair and SWAP the value with new quantity value
# output: hash key value pair with new value

def update_item(hash, item, num)
  hash[item] = num
end

puts "### update_item debug"
update_item(test_hash, "apples", 10)
p test_hash
puts

# Method to print a list and make it look pretty
# input: Hash with item names and default values
# steps: 
# Iterate over each hash key-value pair
# Print out each key & value on single lines
# output: Formatted list of items & values

def print_list(hash)
  hash.each {|item, quantity| puts "#{item}, qty: #{quantity}"}
end

puts "### print_list debug"
print_list(test_hash)
puts


#######

#Create a new list
#Add the following items to your list
#Lemonade, qty: 2
#Tomatoes, qty: 3
#Onions, qty: 1
#Ice Cream, qty: 4
#Remove the Lemonade from your list
#Update the Ice Cream quantity to 1
#Print out your list (Is this readable and nice looking)?
puts "### Release 3 pseudocode debug"
list = create_list("Lemonade Tomatoes Onions IceCream")
update_item(list, "Lemonade", 2)
update_item(list, "Tomatoes", 3)
update_item(list, "Onions", 1)
update_item(list, "IceCream", 4)
remove_item(list, "Lemonade")
update_item(list, "IceCream", 1)
print_list(list)
puts

def create_list(item_array, quantity_array)
  # hash_items = Hash.new(0) # <--- this will be the object we use to collect the items
   Hash[item_array.zip quantity_array]
end

puts "### Overload create_list with arrays as input"
list2 = create_list(["Lemonade", "Tomatoes", "Onions", "IceCream"], [2,3,1,4])
update_item(list2, "Lemonade", 2)
update_item(list2, "Tomatoes", 3)
update_item(list2, "Onions", 1)
update_item(list2, "IceCream", 4)
remove_item(list2, "Lemonade")
update_item(list2, "IceCream", 1)
print_list(list2)