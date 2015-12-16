# => Accountability groups challenge
# => Written by Kevin Huang
#
# => Input: Array consisting of strings of names
# => Output: Hash with keys representing group numbers, and value being arrays filled with group member names
# => Steps:
# => 	Randomize the order of the array
# =>    Separate elements in the array in groups of 4
# =>    Create a new hash, with each hash key being a number starting at 1.
# =>    For each element in the array, assign the value of the array inside to the hash for each group number.
# =>    Return the final hash.

#def acct_groups(names)
#	groups = names.shuffle.each_slice(4).to_a        # Creates a new array from shuffling the inputted array,
#	if groups[-1].size < 3                # Checks if last group has less than 3 members
#		groups[-2].concat(groups[-1])	  # Adds last group members to second to last group members. Note that negative index numbers work from the right to left in arrays.
#		groups.pop                        # Removes the original copy of the last group
#	end
#	groups.each_with_object(Hash.new(0)) { |item, hash| hash[group_num] = item} 
#end

#Refactored Solution

def acct_groups(names)
	groups = names.shuffle
	groups.group_by {|i| groups.index(i) % (groups.size / 4)}    # Creates a hash with values created from groups of at least 4 members each
end

### DRIVER CODE 
array = ["Alexander Nelson","Karen Ball","Christopher Bovio","Gino Paul Capio","Jonathan Chin","Claire Samuels","Ray Curran","David Louie","David Spivey","Max Davis","Devin Mandelbaum","Afton Downey","Jordan Fox","Rebecca Gahart","Gary Wong","Hodges Glenn","Everett Golden","Christopher Graf","Alana Hanson","LeeAnne Hawley","Sabri Helal","Thomas Huang","Jeff Schneider","Jillian Dunleavy","Kevin Huang","Khamla Phimmachack","KT Khoo","Andrew Kim","Joseph Kim","Michal Klimek","Nathan Knockeart","Brigitte Kozena","Donald Lang","Tiffany Larson","Liam Mackey","Johanna Lonn","Tyler McKenzie","Katie Meyer","Meagan Munch","Lucas Nagle","Lydia Nash","Jovanka Nikolovski","James O\'Neal","Greg Park","Patrick Oliphant","Peter Lowe","Lauren Reid","Roche Janken","David Rothschild","Susan Savariar","Kurt Schlueter","Sharon Claitor","Marshall Sosland","Catie Stallings","Steven King","Eric Tenza","Timur Catakli","Todd Seller","Dan Turcza","Lindsey Ullman","Raj Vashist","Violet Dang","Chris Wong","Angelika Yoder","Michelle Zulli"]
p acct_groups(array)

### # What was the most interesting and most difficult part of this challenge?
# => The most interesting part of this challenge was the researching phase when I found out many different ways to separate out the group members into groups.
# => I found that there were several different ways to do this and this helped me find a preferred method of approach.
#
# => The most difficult part of the challenge was thinking of how to implement a newly learned method of separating array elements into this method.
# => Since we only learned these new methods for these challenges for the first time, it makes it quite a challenge to familiarize yourself with new concepts while writing code
#
# Do you feel you are improving in your ability to write pseudocode and break the problem down?
#
# => I think that I am improving my ability to write pseudocode and break the problem down.
# => When I wrote pseudocode for the first pseudocode challenge we did, I was concerned about following best practices and this resulted in pseudocode that read like CODE itself and was not very readable.
# => Now that I've done it several times, I think that I know what is needed when it comes to writing easy to understand pseudocode.
#
# Was your approach for automating this task a good solution? What could have made it even better?
#
# => I think that my approach for automating this task was a pretty good solution - though I think given more time, I could probably make it more robust and complex.
# => A few things I think would make it even better: outputting to a spreadsheet, customizable group size parameters in the method definition.
#
# What data structure did you decide to store the accountability groups in and why?
#
# => I chose to store the accountability groups in a hash due to its ability to store the group number as a part of the hash in hash keys.

# What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
#
# => I learned of the wonders of the .group_by method. Through experimentation, I was able to figure out the right statements to pass through group_by to obtain the perfect minimum sized group sizes.
