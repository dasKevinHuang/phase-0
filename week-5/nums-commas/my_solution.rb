# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? 
# =>Any Positive Integer
# What is the output? (i.e. What should the code return?)
# => A comma separated string of the original integer
# What are the steps needed to solve the problem?
# => ASSIGN new string to the value of the integer converted to a string
# => ASSIGN a new variable "detector" the size of the integer, converted to a string, minus 3.
# => IF detector is less than or equal to 0,
# => THEN return the integer converted to a string.
# => ELSE WHILE detector > 3
# => SUBTRACT dectector by 3
# => THEN FOR the integer digits until the index of the same value as detector, push into a new string.
# => THEN PUSH a comma at the end of the new string
# => CREATE a new integer "count_left" equal to original integer minus detector
# => UNTIL count_left is equal to 0
# => FOR integers after the previous iteration, PUSH into the new string for 3 indices.
# => PUSH a new comma into the string
# => RETURN string


# 1. Initial Solution

def separate_comma(num)
   num_s = num.to_s
   num_a = num_s.split
   detector = num_s.size - 3
   if detector >= 0
      num_a.join
   else
      while detector > 3
         detector -= 3
      end
      for i in num_s[0]..num_s[detector - 1]
         num_a.push(i)
      end
      num_a.push(",")
      count_left = num_s.size - detector
      until count_left == 0
         detector = count_left
         while detector > 3
            detector -= 3
         end
         for i in num_s[num_s.size - count_left]..num_s[detector - 1 + num_s.size - count_left]
            num_a.push(i)
         end
         num_a.push(",")
      end
   end
   num_a.join
end

p "debug" 
p separate_comma(5000)
p test = 5000.to_s.split
p test.push("5")
# 2. Refactored Solution




# 3. Reflection