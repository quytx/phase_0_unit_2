# U2.W4: SOLO CHALLENGE Calculate the Median!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge by myself.

# 1. Pseudocode

# What is the input?
# an array of numbers or strings

# What is the output? (i.e. What should the code return?)
# => return the median value


# What are the steps needed to solve the problem?
# 1. Sort the array in ascending or descending order (do NOT modify the original array)
# 2. If the number of elements is odd, return the middle element
# 3. If the number of elements is even, take the middle two and return the average
# 4. In case of strings, the average of two strings is not defined, so just return
# any string that shows both (a concatenated string would be a good idea).


# 2. Initial Solution
def median(array)
	new_arr = array.sort
	n = new_arr.length
	if n % 2 == 1
		return new_arr[n/2]
	end
	is_num = new_arr[0].is_a? Numeric
	if is_num
		return ( new_arr[n/2] + new_arr[n/2 - 1] ) / 2.0	
	end
	return 	new_arr[n/2 - 1 ] + " " + new_arr[n/2]
end

# 3. Refactored Solution



# 4. Reflection 
# I found this problem to be fairly easy. Much easier than the previous challenge.
# However, my code doesn't look very concise. It is probably due to the fact that
# I have to check to see if the array contains numbers or strings in order to return
# the appropriate value in case the number of elements is even.