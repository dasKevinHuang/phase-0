# Concatenate Two Arrays

# I worked on this challenge by myself.


# Your Solution Below

def array_concat(array_1, array_2)
	concat = []
	array_1.each do |value|
		concat.push(value)
	end
	array_2.each do |value|
		concat.push(value)
	end
	concat
end