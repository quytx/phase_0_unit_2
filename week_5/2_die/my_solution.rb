# U2.W5: Die Class 2: Arbitrary Symbols


# I worked on this challenge by myself.

# 2. Pseudocode

# Input: a non-empty array of strings 
# Output: a random string in the collection
# Steps:
# 1. Define the initialization, taking an array as input type
# 2. Define the sides method - returns the array's length
# 3. Define the rol method - returns a random element in the array


# 3. Initial Solution

class Die
  def initialize(labels)
    if labels.empty?
      raise ArgumentError.new("no element found!")
    end
    @labels = labels
  end

  def sides
    return @labels.length
  end

  def roll
    return @labels.sample
  end
end



# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE






# 5. Reflection 
# Array's sample method is used.