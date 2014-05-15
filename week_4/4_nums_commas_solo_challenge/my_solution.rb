# U2.W4: Numbers to Commas Solo Challenge

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  


# 1. Pseudocode

# What is the input?
# => a number

# What is the output? (i.e. What should the code return?)
# => a string that is the integer value of the input number with commas

# What are the steps needed to solve the problem?
# 1. Convert number to string
# 2. Find out how many commas to be inserted (if needed)
# 3. Reverse the string
# 4. Insert commas from left to right after every 3 chars
# 5. Reverse the string again


# 2. Initial Solution
def separate_comma(number)
  s = number.to_s.reverse
  s = s.scan(/.{1,3}/).join(",")
  s.reverse!
end

# 3. Refactored Solution
def separate_comma(number)
  return number.to_s.reverse.scan(/.{1,3}/).join(",").reverse
end

# 4. Reflection
# I learned a new ruby built-in method for string: scan
# I now realized that Ruby has so many useful built-in
# method that we can use to make our code more concise and save a lot of time.
# The algorithm part is not too difficult, but how to implement
# and to take advantage of Ruby's library is what I found more challenging and so much fun.
# Combining Array and String classes' built-in methods we can do a lot of stuffs!!!
