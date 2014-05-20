# U2.W4: Pad an Array

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge by myself.

# 1. Pseudocode

# What is the input?
# => min size of the padded array and the pad value

# What is the output? (i.e. What should the code return?)
# a new array (for pad) or a modified array (for pad!) that is filled with pad value if needed

# What are the steps needed to solve the problem?
# For pad!
# 1. If min size is greater than the array's length, insert the pad value at the end of the array
# until its length equals to the min size
# 2. Return the modified array

# For pad
# Return a clone of the .pad! array

# 2. Initial Solution
class Array
  def pad!(minSize, padValue = nil)
    if minSize > self.length
      (minSize - self.length).times do
        # insert new elements at the end of the array
        self.insert(-1, padValue) 
      end
    end
    return self
  end
  
  def pad(minSize, padValue = nil)
    # return a clone of the array after padded
    return self.clone.pad!(minSize, padValue)
  end
end


# 3. Refactored Solution
# none that i can think of at the moment


# 4. Reflection
# I learned that Array in Ruby is an open(public) built-in class and we can add our own methods to it!
# I also learned the "self" reserved word which is a reference to the object itself, to be used inside of the class
