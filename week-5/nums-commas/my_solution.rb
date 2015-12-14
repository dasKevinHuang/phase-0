# Numbers to Commas Solo Challenge
# By Kevin Huang

# I spent 2 hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? 
# =>Any Positive Integer, i.e. 5000
#
# What is the output? (i.e. What should the code return?)
# => A string with commas added between each 3rd digit from the right (not at the beginning of the string)
# => such that 5000 => "5,000"
#
# What are the steps needed to solve the problem?
#
# => Create a new array from the number given, by converting the number value to a string, REVERSE the string, then SPLIT each digit into an array element.
# => FOR each element of the new array:
# => IF the (index + 1) % 3 gives zero remainders AND the array size is greater than 3 AND the index is not equal to 0, THEN return a comma (",") and the element value
# => ELSE return the element
# => REVERSE the array and JOIN the array to a string. RETURN the string.



# 1. Initial Solution

# def separate_comma(num)
#    num_a = num.to_s.reverse.split(//)
#    num_a.map!.with_index do |x,i|
#       if i % 3 == 0 && num_a.size > 3 && i != 0   // Proceeds only on every 3rd digit, and only if the entire string is bigger than 3 digits, and prevents comma from being added to beginning.
#          x + ","
#       else
#          x
#       end
#    end
#    num_a.reverse.join
# end

# 2. Refactored Solution

def separate_comma(num)
   num.to_s.reverse.gsub(/(\d{3})/,"\\1,").chomp(",").reverse
end

# 3. Solo Challenge 5.5 Reflection by Kevin Huang

#### What was your process for breaking the problem down? What different approaches did you consider?
#
# => This problem was a pretty interesting logic problem to think through and I came up with several approaches before ending up with my preferred plan of attack.
#
# => At first, I proposed a way to detect each 3rd digit by using a counting variable that would activate a process to add a comma whenever it became divisible by 3. 
# => However, I scrapped this idea after I realized the process of scraping away the first few digits (that may or may not be within a group of 3 digits before a comma) from this counting variable.
# => That process would have probably taken up quite a bit of code and would be hard to understand for people reading the code.
#
# => After this first idea, I figured out my preferred approach to this problem - which was inspired by the first approach I thought of.
# => In the approach that I chose, I decided that instead of working with the regular order of the number given, I would have the method work BACKWARDS!
#
# => This process assumes that it will be easier to work with the number values in reverse order,
# => so that a comma will be added after every 3 digits from the right to the left.
# => Such that '5000' will be reversed to '0005', then iterated over such that a comma will be added after every 3rd digit => '000,5'.
# => Then to finish the method, reverse the whole number and return as a string.
#
# => Since we are trying to add a comma after every 3rd digit from the right, 
# => it makes sense to iterate over the numbers from reverse order rather than its normal order.
# => This way we can add the commas, then simply reverse the whole string again to return our final solution!
# => Not only do I think that this approach makes the logic easier to read and understand, but its also more fun than the weird approach I thought of in the first place.

#### Was your pseudocode effective in helping you build a successful initial solution?
#
# => I definitely felt that my pseudocode helped in building a successful initial solution.
# => When I originally started writing the pseudocode, I made sure to break it down into the smallest pieces of logic I could into pseudocode.
# => This way, when I went back to write the actual solution, it would be easy for me to follow the flow of logic for the rest of the program, instead of having to wing it.
#
#### What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?
#
# => I was able to find the .gsub(pattern) method when I was refactoring my solution. 
# => The Ruby Docs were extremely helpful to help me understand how this helpful method works - as well as teaching Regexp pattern syntax.
# => At first it seemed like quite a complex method to use to solve this problem - however I knew that this method was the right one to use for this, since it has pattern detection built into it, and a robust string modification process.
# => The difficulty came in learning how to write a pattern for .gsub to detect using a Regexp.
# => It took some experimentation to get the right pattern and string modification parameters for .gsub to work. In the end I think it's quite a nice solution to a complex logical process.
#
# => To explain it simply, I wrote .gsub to take the reversed string and make 3 digit substring groups ( \d{3} ). 
# => Then in the second parameter, I had .gsub return the string with a comma after each 3 digit group ("\\1,").
#
# => One different aspect however to this solution, is that it does not employ the flow control structures that I employed in my original solution.
# => That's why I also needed to use .chomp in this refactored solution.
# => In the original solution, I used a conditional to ensure that there would be no commas added in the beginning of numbers (or in the end during the reversed phase).
# => To have the same effect, without having to go through flow control structures, I used chomp to always remove a comma at the end of the string, if one existed.
#
# => I think my refactored solution ends up being actually a bit more easier to understand and is easier to read than the original.
# => As long as you can understand the way .gsub works, and how .chomp helps with removing any erroneous commas at the end of the reversed string,
# => it makes for a pleasant one-line solution.

#### How did you initially iterate through the data structure?
#
# => Initially, I used .map!.with_index so that I could easily change the array that I created in the method, while also utilizing its index.
# => .with_index was vital since I wanted to detect if the index was divisible by 3.
#
# => Also, I specifically chose to use .map! to save space and memory from being used on a new array being created. 
# => Since the array I was using for this purpose a local variable for the method block itself, I could simply use this variable for the entirety of the method, without modifying the original variable given.
#
# => Then within the iteration block, I employed if/else to control whether or not a comma would be added.
# => I ensured that the IF statement would only be activated if specific conditons were met to prevent erroneous commas from being added to the final string.
# => Otherwise, it would simply return the current element.
#
#### Do you feel your refactored solution is more readable than your initial solution? Why?
#
# => Yes I do! Since learning about how helpful .gsub with patterns, 
# => I think my refactored solution takes the first solution and makes it much better and is even more readable.
#
# => This is because how you can see the pattern argument being passed => /d{3} => which is every 3 digits will become a group.
# => Then the string modification argument in the second parameter => "\\1," => which simply means a comma will be added after every group.
# => .chomp then takes care of clean up for any commas that end the reversed string.
#
# => Because of the way .gsub breaks down that complex 3 digit pattern detection of the first solution, I think it makes for a much more readable solution.