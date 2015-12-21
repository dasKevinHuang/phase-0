# A Nested Array to Model a Bingo Board SOLO CHALLENGE
# Written by Kevin Huang
# I spent 2 hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  # Choose a random number between 1-5, with each number representing a letter ( 1 = b, 2 = i , etc.)
  # Choose a random number between 1-100.
  # Return the combination of the two.

# Check the called column for the number called.
  # If B, I, N, G, or O, check for the corresponding sub array index (0-4) for the column
  # Then iterate through each of the individual elements within the nested array until it matches the nubmer called.

# If the number is in the column, replace with an 'x'
  # Access the nested array element, and updated it with an x

# Display a column to the console
  # Accept B, I, N, G, or O as an argument.
  # => print a new line
  # => print each element of the sub array of the corresponding column (B,I,N,G,O) based on its correspnding index

# Display the board to the console (prettily)
  #Print a new line
  # The print the BINGO board, line by line aligned to each other, with vertical lines separating each element.

# Initial Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
  end

  def call
    @call = ""
    x = rand(5)
    case x
      when 0
        @call += "B"
      when 1
        @call += "I"
      when 2
        @call += "N"
      when 3
        @call += "G"
      when 4
        @call += "O"
    end
    @call += rand(1..100).to_s
  end

  def check
    letter = @call[0]
    number = @call[1..-1].to_i
    case letter
      when 'B'
        idx = 0
      when 'I'
        idx = 1
      when 'N'
        idx = 2
      when 'G'
        idx = 3
      when 'O'
        idx = 4
    end
    @bingo_board.each do |y|
      if y[idx] == number
        y[idx] = 'X'
      end
    end
  end

  def display_board
    puts "| B  | I  | N  | G  | O  |\n"
    @bingo_board.each {|x| x.each {|y| print "| #{y} "}; print "|\n"}
    return
  end
end

# Refactored Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
  end

  def call
    @call = ""
    @call = ["B","I","N","G","O"].sample  # Chooses random array element
    @call += rand(1..100).to_s
  end

  def check
    letter = @call[0]
    number = @call[1..-1].to_i
    idx = "BINGO".index(letter) #Finds index of the corresponding letter
    @bingo_board.each do |y|
      if y[idx] == number
        y[idx] = 'X'
      end
    end
  end

  def display_board
    puts "| B  | I  | N  | G  | O  |\n"
    @bingo_board.each {|x| x.each {|y| print "| #{y} "}; print "|\n"}
    return
  end
end

#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
p new_game.call
p new_game.check
new_game.display_board

#### Release 5: True Bingo Board (Optional) ####
#### The bingo board given is just populated with random numbers from 1 - 100. However, true bingo boards are constructed a bit differently. Traditionally the pattern is like this: "B" (numbers 1–15), "I" (numbers 16–30), "N" (numbers 31–45), "G" (numbers 46–60), and "O" (numbers 61–75) with a free space in the middle.#### 

#### Create a method that creates a legal bingo board.

def create_legal_board
  board = []
  5.times do
    row = []
    row.push(rand(1..15))
    row.push(rand(16..30))
    row.push(rand(31..45))
    row.push(rand(46..60))
    row.push(rand(61..75))
    board.push(row)
  end
  puts "| B  | I  | N  | G  | O  |\n"
  board.each {|x| x.each {|y| print "| #{y} "}; print "|\n"}
end

# Driver code for optional release
puts
create_legal_board


#Reflection


### How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
#
# => I didn't think it was too hard to pseudocode for this challenge. 
# => I think that my pseudocoding style could be improved further by breaking down the steps into simple statements
#
# => When I write pseudocode, I tend to try to think of how I would write code for the program itself, and this cane be obstructive when writing readable pseudocode.
# => So I have been trying to think of pseudocode as though I was explaining to a friend or relative that does not know how to code. 
# => I think that this change has been beneficial for my pseudocode skill growth - however I hope that I can get better in this in the future.
# => It's hard to measure how I should pseudocode as well, since depending on who you are talking to, they may have a different view on pseudocode...
# => I welcome all the feedback that I can get so I can write better pseudocode.
#
### What are the benefits of using a class for this challenge?
#
# => The benefit of using a class for this challenge is that you are able to use data across the whole class.
# => What I mean is that when you initialize the bingo board, the bingo board data stays within the class object.
# => Then the call variable also moves along the class, so that when you use the check method, it checks the previously used call variable to check the bingo board.
# => Fundamentally, I think using a class reduces the need for a lot of duplication that would have been needed to do the same thing without a class!
#
### How can you access coordinates in a nested array?
#
# => You can access coordinates in a nested array by using the index that points to the subarray itself, then using the index that points to the element within the subarray that you want to access.
# => The way this would look is like this - parrent_array[subarray_index][element_index]
#
# => You can also manipulate this property when using .each, so that you would use two .each methods to print the array in its entirety.
#
### What methods did you use to access and modify the array?
#
# => I used .each to access and modify the array.
# => I would use two .each methods, nested within another, to access an element within a nested array.
# => To modify an array using .each, I would specify the array element by writing out the full array[index] address.
#
# => I also used .push for the TRUE bingo method to create new values for each array element in the bingo board.
#
### Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?
#
# => I learned #index and #sample.
# => For #index, I learned that it allows you to find the index of the corresponding element value that you pass through it.
# => So that when you do array.index("HELLO!"), it will return the index of the element that holds "HELLO!"
# => This is a method that I had been wondering about for a while, since it allows you to fetch the location of a specific element.
# 
# => I also learned about #sample, which will return a random element from within an array.
# => When you use [0,1,2,3,4,5].sample - it will return one of those elements randomly.
#
### How did you determine what should be an instance variable versus a local variable?
#
# => I decided to use an instance variable when some data needed to be used in another location in the class.
# => Then I decided to use local variables for when data was used uniquely within a particular method of the class.
#
# => For example, I decided to use an instance variable for the Bingo call itself, so that it could be used across the entire class (particularly in the check method).
# => Then, since calls were determined in the #call method and assigned to @call,
# => I created local variables - letter and number - using the data from @call, to isolate the specific BINGO letter and number data from the call.
#
# => I felt that this usage of instance and local variables was practical and made the code more readable.
#
### What do you feel is most improved in your refactored solution?
#
# => I think the biggest improvement between my initial solution and my refactored solution is the removal of the need for flow control to determine or access to correct index for a BINGO letter.
# => In my initial solution, identifying or accessing a BINGO letter index took up two entire case statements, that had a when statement for each letter.
# => I was able to taper these functions down to 1 line each, by using the #sample and #index methods!