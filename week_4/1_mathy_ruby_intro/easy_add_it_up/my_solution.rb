# U2.W4: Add it up!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge by myself.

# 1. Pseudocode


# What is the input?
# => an array of numbers or strings

# What is the output? (i.e. What should the code return?)
# => sum of all numbers in the array or a concatenated 
# string results from all elements of the array


# What are the steps needed to solve the problem?

# For total method
# 0. Initilize sum = 0
# 1. Iterate through each element of the array
# 2. Add each number to sum
# 3. Return sum

# For sentence_maker method
# 0. Create a new empty string that will be the result to return
# 1. Access first element in the array
# 2. Capitalize the value of the first element and concatenate to result
# 3. Iterate through each element until the one before the last element
# 4. Concatenate each element to the result string with a space after each
# 5. Concatenate the last element to the result string followed by a period sign
# 6. Return the concatenated string

# 2. Initial Solution
def total(array)
	sum = 0
	array.each { |x| sum += x }	
	sum
end

def sentence_maker(array)
	sentence = array[0].capitalize.to_s + " "
	for i in 1 ... (array.length - 1)
		sentence += array[i].to_s + " "
	end
	sentence += array[array.length - 1].to_s + "."
end

# 3. Refactored Solution
def total(array)
	sum = array.inject { |m, n| m + n }
end


# 4. Reflection 
# I started by running the test and followed the feedback to figure out what to do
# The total method was easy to implement
# The sentence_maker method took me a while. At first I did not include the ".to_s" 
# part so I failed the last test (because 586 is not a string but a number and the + operation gives an error)
# I fixed that by adding .to_s so it converts each element to string type before concatenating to the result string
# Later I found out that inject is a short way to iterate through all element and accumulate all elements into a single variable.
# I am not sure if the inject call is slower than a for-loop, but it does look more concise.
