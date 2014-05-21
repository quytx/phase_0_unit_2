# U2.W5: Die Class 1: Numeric


# I worked on this challenge by myself.

# 2. Pseudocode

# Input: number of sides
# Output: number of sides or a random number between 1 and # of sides
# Steps:
# 1. Create a Die class with one initialization parameter which is a number > 1
# 2. Define method sides which returns number of sides
# 3. Define method roll which returns a random number between 1 and # of sides using Random class



# 3. Initial Solution

class Die
  def initialize(sides)
    if sides < 1
      raise ArgumentError.new("Number of sides must be greater than 1")
    end
    @sides = sides
  end
  
  def sides
    return @sides 
  end
  
  def roll
    return Random.new.rand(@sides) + 1
  end
end



# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE






# 5. Reflection
# The most important thing I learned in this exercise is that you have to put "@" before any instance variable inside a class
# At first, I put @ before the variable "sides" in the initialization but not in the method, and the test gave me two errors
# I guess Ruby only knows a variable is an instance variable that belongs to each instance of a class if we put "@" before that variable 