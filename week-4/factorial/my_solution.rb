# Factorial

# I worked on this challenge with Sabri Helal.


# Your Solution Below

#OBTAIN integer
#OUTPUT display for integer
#SET total to 1
#FOR each number up to the integer, multiply the number by the total
#RETURN total



def factorial(number)
  total = 1
  for i in 1..number
    total *= i   
  end
  total
end

