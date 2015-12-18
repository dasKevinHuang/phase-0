# Written by Kevin Huang

# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================

p array[1][1][2][0]

# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts: hole in oneeeeeeeee
# ============================================================

p hash[:outer][:inner]["almost"][3]

# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================

p nested_data[:array][1][:hash]

# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

number_array.map! do |n|
  if n.kind_of?(Array)
    n.map! do |x|
      x += 5
    end
  else
    n += 5
  end
end

p number_array
# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]
  
def name_gen(a)
  new_array = a.map do |n|
    if n.kind_of?(Array)
      n.map do |x|
        if x.kind_of?(Array)
          x.map do |x2|
            x2 + "ly"
          end
        else
        x + "ly"
        end
      end
    else
        n + "ly"
    end
  end
end


# Reflection ###

###What are some general rules you can apply to nested arrays?
#
# => One great rule about nested arrays you can apply to general usage, is that you can easily access nested arrays, as though they were regular arrays.
# => You can think of the statement that accesses one element, as the name of the array itself.
# => Then simply add the index number in brackets afterward.
# => 
# => Then you would come up with something like array[0][5]
# => Such that you would access the nested array that's inside the 1st element of the parent array,
# => to access the 6th element of the internal array. It's fairly simple when you try it out a few times.
#
###What are some ways you can iterate over nested arrays?
#
# => A few of the ways that you could iterate over nested arrays is by using kind_of? or is_a? to test if the element you are iterating over on the parent array is an array itself.
# => Then you would write a running block for that if statement, and an else statement that would activate only if the element was not an array.
#
# => You can even nest these statements within each other to go deeper and deeper into nested arrays!
# => But for this, you'll have to be careful to keep your end statements organized or else you might get errors.
# => 
#
###Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
#
# => We used map and map! to iterate over the data structures and to modify them when appropriate.
# => We also implemented kind_of? to test for array elements inside of the array.
# => 
# => We decided that map was the right method to use, since it allows you to return a new array.
# => This is different from .each, which will simply iterate without returning anything, unless otherwise stated.
# => So .map and .map! actually ended up being the perfect choice for this challenge since it allowed us to use it destructively, and non-destructively to form the perfect code for iterating over nested arrays.
#