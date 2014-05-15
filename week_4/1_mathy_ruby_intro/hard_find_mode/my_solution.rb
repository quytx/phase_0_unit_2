# U2.W4: Calculate the mode!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge by myself.

# 1. Pseudocode

# What is the input?
# => an array of numbers or strings

# What is the output? (i.e. What should the code return?)
# => an array of elements with highest frequency

# What are the steps needed to solve the problem?
# 1. Create a new hash map from key (number or string value) to value (frequency with default value of 0)
# 2. Iterate through each element, add a count to the value(frequency) mapped to that key(the element)
# 3. Within the hash map created, select only pairs (key, value) with value == highest value 
# 4. Now that we got a new hash with only keys that are mapped to the highest value, choose all keys in that hash map to return

# 2. Initial Solution
def mode(array)  
	h = Hash.new(0)
	array.each do |x| 
		h[x] = h[x] + 1                    
	end
	h.select { |k,v| v == h.values.max }.keys
end

# 3. Refactored Solution
# none


# 4. Reflection 
# At first, I know that I must iterate through each element and update the count
# That means I have to keep track of both the element's values (number or string) and the frequencies.
# That leads me to the idea of using hash. But how can I do that in the most efficient way?
# I then think of dividing into two circumstances, using hash.has_key?
# 1. If the hash already has that key, update the key value
# 2. If the hash not yet has that key, add new pair [k, v = 1] to the hash map
# But then I realize that by setting default value of all keys added to the hash to 0, there's no need to split into 2 cases.
# Finally, it took me a lot of time to figure out the best way to retrieve needed data from a hash set.
