# U2.W4: Calculate a letter grade!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge by myself.

# 1. Pseudocode

# What is the input?
# => array of numbers (test scores)

# What is the output? (i.e. What should the code return?)
# => the grade letter mapped to the average test score

# What are the steps needed to solve the problem?
# 1. Find the average score
# 2. Map to the corresponding grade letter

# 2. Initial Solution
def get_grade(array)
	sum = array.inject { |n, x| n + x }
	avg = sum / array.length * 1.0
	if avg >= 90
		return "A" 
	elsif avg >= 80
		return "B"
	elsif avg >= 70
		return "C"	
	elsif avg >= 60
		return "D"
	else
		return "F"
	end			
end

# 3. Refactored Solution
# I think we can use a case-when for mapping, however I dont think it would make any difference.

# 4. Reflection 
# This exercise is pretty straight-forward. 
# I learned a new syntax when trying to search for a switch statement that is case-when
