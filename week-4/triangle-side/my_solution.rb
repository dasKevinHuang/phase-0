# I worked on this challenge with Claire Samuels.

#if:
#a + b > c
#a + c > b
#b + c > a
#

# Your Solution Below

def valid_triangle?(a, b, c)
  a + b > c && a + c > b && b + c > a
end